; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94758 () Bool)

(assert start!94758)

(declare-fun b_free!21975 () Bool)

(declare-fun b_next!21975 () Bool)

(assert (=> start!94758 (= b_free!21975 (not b_next!21975))))

(declare-fun tp!77385 () Bool)

(declare-fun b_and!34823 () Bool)

(assert (=> start!94758 (= tp!77385 b_and!34823)))

(declare-fun b!1070917 () Bool)

(declare-fun e!611444 () Bool)

(assert (=> b!1070917 (= e!611444 true)))

(declare-datatypes ((V!39515 0))(
  ( (V!39516 (val!12943 Int)) )
))
(declare-datatypes ((tuple2!16530 0))(
  ( (tuple2!16531 (_1!8275 (_ BitVec 64)) (_2!8275 V!39515)) )
))
(declare-datatypes ((List!23115 0))(
  ( (Nil!23112) (Cons!23111 (h!24320 tuple2!16530) (t!32455 List!23115)) )
))
(declare-datatypes ((ListLongMap!14511 0))(
  ( (ListLongMap!14512 (toList!7271 List!23115)) )
))
(declare-fun lt!473391 () ListLongMap!14511)

(declare-fun lt!473394 () tuple2!16530)

(declare-fun -!665 (ListLongMap!14511 (_ BitVec 64)) ListLongMap!14511)

(declare-fun +!3128 (ListLongMap!14511 tuple2!16530) ListLongMap!14511)

(assert (=> b!1070917 (= (-!665 (+!3128 lt!473391 lt!473394) #b0000000000000000000000000000000000000000000000000000000000000000) lt!473391)))

(declare-datatypes ((Unit!35205 0))(
  ( (Unit!35206) )
))
(declare-fun lt!473389 () Unit!35205)

(declare-fun zeroValueBefore!47 () V!39515)

(declare-fun addThenRemoveForNewKeyIsSame!39 (ListLongMap!14511 (_ BitVec 64) V!39515) Unit!35205)

(assert (=> b!1070917 (= lt!473389 (addThenRemoveForNewKeyIsSame!39 lt!473391 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!473392 () ListLongMap!14511)

(declare-fun lt!473390 () tuple2!16530)

(assert (=> b!1070917 (= lt!473391 (+!3128 lt!473392 lt!473390))))

(declare-fun e!611445 () Bool)

(assert (=> b!1070917 e!611445))

(declare-fun res!714488 () Bool)

(assert (=> b!1070917 (=> (not res!714488) (not e!611445))))

(declare-fun lt!473395 () ListLongMap!14511)

(assert (=> b!1070917 (= res!714488 (= lt!473395 (+!3128 (+!3128 lt!473392 lt!473394) lt!473390)))))

(declare-fun minValue!907 () V!39515)

(assert (=> b!1070917 (= lt!473390 (tuple2!16531 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1070917 (= lt!473394 (tuple2!16531 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun lt!473397 () ListLongMap!14511)

(declare-datatypes ((ValueCell!12189 0))(
  ( (ValueCellFull!12189 (v!15560 V!39515)) (EmptyCell!12189) )
))
(declare-datatypes ((array!68504 0))(
  ( (array!68505 (arr!32944 (Array (_ BitVec 32) ValueCell!12189)) (size!33481 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68504)

(declare-datatypes ((array!68506 0))(
  ( (array!68507 (arr!32945 (Array (_ BitVec 32) (_ BitVec 64))) (size!33482 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68506)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39515)

(declare-fun getCurrentListMap!4137 (array!68506 array!68504 (_ BitVec 32) (_ BitVec 32) V!39515 V!39515 (_ BitVec 32) Int) ListLongMap!14511)

(assert (=> b!1070917 (= lt!473397 (getCurrentListMap!4137 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1070917 (= lt!473395 (getCurrentListMap!4137 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070918 () Bool)

(declare-fun res!714487 () Bool)

(declare-fun e!611446 () Bool)

(assert (=> b!1070918 (=> (not res!714487) (not e!611446))))

(declare-datatypes ((List!23116 0))(
  ( (Nil!23113) (Cons!23112 (h!24321 (_ BitVec 64)) (t!32456 List!23116)) )
))
(declare-fun arrayNoDuplicates!0 (array!68506 (_ BitVec 32) List!23116) Bool)

(assert (=> b!1070918 (= res!714487 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23113))))

(declare-fun b!1070919 () Bool)

(assert (=> b!1070919 (= e!611446 (not e!611444))))

(declare-fun res!714486 () Bool)

(assert (=> b!1070919 (=> res!714486 e!611444)))

(assert (=> b!1070919 (= res!714486 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!473396 () ListLongMap!14511)

(assert (=> b!1070919 (= lt!473392 lt!473396)))

(declare-fun lt!473393 () Unit!35205)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!845 (array!68506 array!68504 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39515 V!39515 V!39515 V!39515 (_ BitVec 32) Int) Unit!35205)

(assert (=> b!1070919 (= lt!473393 (lemmaNoChangeToArrayThenSameMapNoExtras!845 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3806 (array!68506 array!68504 (_ BitVec 32) (_ BitVec 32) V!39515 V!39515 (_ BitVec 32) Int) ListLongMap!14511)

(assert (=> b!1070919 (= lt!473396 (getCurrentListMapNoExtraKeys!3806 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070919 (= lt!473392 (getCurrentListMapNoExtraKeys!3806 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070920 () Bool)

(declare-fun e!611441 () Bool)

(declare-fun tp_is_empty!25785 () Bool)

(assert (=> b!1070920 (= e!611441 tp_is_empty!25785)))

(declare-fun b!1070921 () Bool)

(declare-fun res!714485 () Bool)

(assert (=> b!1070921 (=> (not res!714485) (not e!611446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68506 (_ BitVec 32)) Bool)

(assert (=> b!1070921 (= res!714485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!714489 () Bool)

(assert (=> start!94758 (=> (not res!714489) (not e!611446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94758 (= res!714489 (validMask!0 mask!1515))))

(assert (=> start!94758 e!611446))

(assert (=> start!94758 true))

(assert (=> start!94758 tp_is_empty!25785))

(declare-fun e!611442 () Bool)

(declare-fun array_inv!25328 (array!68504) Bool)

(assert (=> start!94758 (and (array_inv!25328 _values!955) e!611442)))

(assert (=> start!94758 tp!77385))

(declare-fun array_inv!25329 (array!68506) Bool)

(assert (=> start!94758 (array_inv!25329 _keys!1163)))

(declare-fun b!1070922 () Bool)

(declare-fun e!611443 () Bool)

(assert (=> b!1070922 (= e!611443 tp_is_empty!25785)))

(declare-fun b!1070923 () Bool)

(assert (=> b!1070923 (= e!611445 (= lt!473397 (+!3128 lt!473396 lt!473390)))))

(declare-fun b!1070924 () Bool)

(declare-fun res!714484 () Bool)

(assert (=> b!1070924 (=> (not res!714484) (not e!611446))))

(assert (=> b!1070924 (= res!714484 (and (= (size!33481 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33482 _keys!1163) (size!33481 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1070925 () Bool)

(declare-fun mapRes!40384 () Bool)

(assert (=> b!1070925 (= e!611442 (and e!611443 mapRes!40384))))

(declare-fun condMapEmpty!40384 () Bool)

(declare-fun mapDefault!40384 () ValueCell!12189)

(assert (=> b!1070925 (= condMapEmpty!40384 (= (arr!32944 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12189)) mapDefault!40384)))))

(declare-fun mapIsEmpty!40384 () Bool)

(assert (=> mapIsEmpty!40384 mapRes!40384))

(declare-fun mapNonEmpty!40384 () Bool)

(declare-fun tp!77384 () Bool)

(assert (=> mapNonEmpty!40384 (= mapRes!40384 (and tp!77384 e!611441))))

(declare-fun mapRest!40384 () (Array (_ BitVec 32) ValueCell!12189))

(declare-fun mapKey!40384 () (_ BitVec 32))

(declare-fun mapValue!40384 () ValueCell!12189)

(assert (=> mapNonEmpty!40384 (= (arr!32944 _values!955) (store mapRest!40384 mapKey!40384 mapValue!40384))))

(assert (= (and start!94758 res!714489) b!1070924))

(assert (= (and b!1070924 res!714484) b!1070921))

(assert (= (and b!1070921 res!714485) b!1070918))

(assert (= (and b!1070918 res!714487) b!1070919))

(assert (= (and b!1070919 (not res!714486)) b!1070917))

(assert (= (and b!1070917 res!714488) b!1070923))

(assert (= (and b!1070925 condMapEmpty!40384) mapIsEmpty!40384))

(assert (= (and b!1070925 (not condMapEmpty!40384)) mapNonEmpty!40384))

(get-info :version)

(assert (= (and mapNonEmpty!40384 ((_ is ValueCellFull!12189) mapValue!40384)) b!1070920))

(assert (= (and b!1070925 ((_ is ValueCellFull!12189) mapDefault!40384)) b!1070922))

(assert (= start!94758 b!1070925))

(declare-fun m!989343 () Bool)

(assert (=> b!1070923 m!989343))

(declare-fun m!989345 () Bool)

(assert (=> mapNonEmpty!40384 m!989345))

(declare-fun m!989347 () Bool)

(assert (=> b!1070921 m!989347))

(declare-fun m!989349 () Bool)

(assert (=> b!1070919 m!989349))

(declare-fun m!989351 () Bool)

(assert (=> b!1070919 m!989351))

(declare-fun m!989353 () Bool)

(assert (=> b!1070919 m!989353))

(declare-fun m!989355 () Bool)

(assert (=> b!1070918 m!989355))

(declare-fun m!989357 () Bool)

(assert (=> start!94758 m!989357))

(declare-fun m!989359 () Bool)

(assert (=> start!94758 m!989359))

(declare-fun m!989361 () Bool)

(assert (=> start!94758 m!989361))

(declare-fun m!989363 () Bool)

(assert (=> b!1070917 m!989363))

(assert (=> b!1070917 m!989363))

(declare-fun m!989365 () Bool)

(assert (=> b!1070917 m!989365))

(declare-fun m!989367 () Bool)

(assert (=> b!1070917 m!989367))

(declare-fun m!989369 () Bool)

(assert (=> b!1070917 m!989369))

(assert (=> b!1070917 m!989367))

(declare-fun m!989371 () Bool)

(assert (=> b!1070917 m!989371))

(declare-fun m!989373 () Bool)

(assert (=> b!1070917 m!989373))

(declare-fun m!989375 () Bool)

(assert (=> b!1070917 m!989375))

(declare-fun m!989377 () Bool)

(assert (=> b!1070917 m!989377))

(check-sat tp_is_empty!25785 (not b!1070921) (not b!1070917) (not start!94758) (not mapNonEmpty!40384) (not b!1070918) (not b!1070919) b_and!34823 (not b_next!21975) (not b!1070923))
(check-sat b_and!34823 (not b_next!21975))
