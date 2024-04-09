; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95280 () Bool)

(assert start!95280)

(declare-fun b_free!22245 () Bool)

(declare-fun b_next!22245 () Bool)

(assert (=> start!95280 (= b_free!22245 (not b_next!22245))))

(declare-fun tp!78233 () Bool)

(declare-fun b_and!35241 () Bool)

(assert (=> start!95280 (= tp!78233 b_and!35241)))

(declare-fun b!1076529 () Bool)

(declare-fun e!615430 () Bool)

(declare-fun e!615434 () Bool)

(declare-fun mapRes!40828 () Bool)

(assert (=> b!1076529 (= e!615430 (and e!615434 mapRes!40828))))

(declare-fun condMapEmpty!40828 () Bool)

(declare-datatypes ((V!39875 0))(
  ( (V!39876 (val!13078 Int)) )
))
(declare-datatypes ((ValueCell!12324 0))(
  ( (ValueCellFull!12324 (v!15707 V!39875)) (EmptyCell!12324) )
))
(declare-datatypes ((array!69048 0))(
  ( (array!69049 (arr!33203 (Array (_ BitVec 32) ValueCell!12324)) (size!33740 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!69048)

(declare-fun mapDefault!40828 () ValueCell!12324)

(assert (=> b!1076529 (= condMapEmpty!40828 (= (arr!33203 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12324)) mapDefault!40828)))))

(declare-fun mapIsEmpty!40828 () Bool)

(assert (=> mapIsEmpty!40828 mapRes!40828))

(declare-fun b!1076530 () Bool)

(declare-fun e!615433 () Bool)

(declare-fun tp_is_empty!26055 () Bool)

(assert (=> b!1076530 (= e!615433 tp_is_empty!26055)))

(declare-fun res!717594 () Bool)

(declare-fun e!615429 () Bool)

(assert (=> start!95280 (=> (not res!717594) (not e!615429))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95280 (= res!717594 (validMask!0 mask!1515))))

(assert (=> start!95280 e!615429))

(assert (=> start!95280 true))

(assert (=> start!95280 tp_is_empty!26055))

(declare-fun array_inv!25514 (array!69048) Bool)

(assert (=> start!95280 (and (array_inv!25514 _values!955) e!615430)))

(assert (=> start!95280 tp!78233))

(declare-datatypes ((array!69050 0))(
  ( (array!69051 (arr!33204 (Array (_ BitVec 32) (_ BitVec 64))) (size!33741 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!69050)

(declare-fun array_inv!25515 (array!69050) Bool)

(assert (=> start!95280 (array_inv!25515 _keys!1163)))

(declare-fun mapNonEmpty!40828 () Bool)

(declare-fun tp!78234 () Bool)

(assert (=> mapNonEmpty!40828 (= mapRes!40828 (and tp!78234 e!615433))))

(declare-fun mapValue!40828 () ValueCell!12324)

(declare-fun mapKey!40828 () (_ BitVec 32))

(declare-fun mapRest!40828 () (Array (_ BitVec 32) ValueCell!12324))

(assert (=> mapNonEmpty!40828 (= (arr!33203 _values!955) (store mapRest!40828 mapKey!40828 mapValue!40828))))

(declare-fun b!1076531 () Bool)

(declare-fun res!717593 () Bool)

(assert (=> b!1076531 (=> (not res!717593) (not e!615429))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1076531 (= res!717593 (and (= (size!33740 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33741 _keys!1163) (size!33740 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1076532 () Bool)

(declare-fun res!717592 () Bool)

(assert (=> b!1076532 (=> (not res!717592) (not e!615429))))

(declare-datatypes ((List!23312 0))(
  ( (Nil!23309) (Cons!23308 (h!24517 (_ BitVec 64)) (t!32678 List!23312)) )
))
(declare-fun arrayNoDuplicates!0 (array!69050 (_ BitVec 32) List!23312) Bool)

(assert (=> b!1076532 (= res!717592 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23309))))

(declare-fun b!1076533 () Bool)

(declare-fun e!615432 () Bool)

(assert (=> b!1076533 (= e!615429 (not e!615432))))

(declare-fun res!717591 () Bool)

(assert (=> b!1076533 (=> res!717591 e!615432)))

(assert (=> b!1076533 (= res!717591 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16740 0))(
  ( (tuple2!16741 (_1!8380 (_ BitVec 64)) (_2!8380 V!39875)) )
))
(declare-datatypes ((List!23313 0))(
  ( (Nil!23310) (Cons!23309 (h!24518 tuple2!16740) (t!32679 List!23313)) )
))
(declare-datatypes ((ListLongMap!14721 0))(
  ( (ListLongMap!14722 (toList!7376 List!23313)) )
))
(declare-fun lt!478301 () ListLongMap!14721)

(declare-fun lt!478300 () ListLongMap!14721)

(assert (=> b!1076533 (= lt!478301 lt!478300)))

(declare-fun zeroValueBefore!47 () V!39875)

(declare-fun minValue!907 () V!39875)

(declare-datatypes ((Unit!35391 0))(
  ( (Unit!35392) )
))
(declare-fun lt!478308 () Unit!35391)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39875)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!918 (array!69050 array!69048 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39875 V!39875 V!39875 V!39875 (_ BitVec 32) Int) Unit!35391)

(assert (=> b!1076533 (= lt!478308 (lemmaNoChangeToArrayThenSameMapNoExtras!918 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3899 (array!69050 array!69048 (_ BitVec 32) (_ BitVec 32) V!39875 V!39875 (_ BitVec 32) Int) ListLongMap!14721)

(assert (=> b!1076533 (= lt!478300 (getCurrentListMapNoExtraKeys!3899 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1076533 (= lt!478301 (getCurrentListMapNoExtraKeys!3899 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076534 () Bool)

(assert (=> b!1076534 (= e!615432 true)))

(declare-fun lt!478307 () ListLongMap!14721)

(declare-fun lt!478306 () ListLongMap!14721)

(declare-fun -!717 (ListLongMap!14721 (_ BitVec 64)) ListLongMap!14721)

(assert (=> b!1076534 (= lt!478307 (-!717 lt!478306 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!478303 () ListLongMap!14721)

(declare-fun lt!478305 () ListLongMap!14721)

(assert (=> b!1076534 (= lt!478303 lt!478305)))

(declare-fun lt!478309 () Unit!35391)

(declare-fun addCommutativeForDiffKeys!751 (ListLongMap!14721 (_ BitVec 64) V!39875 (_ BitVec 64) V!39875) Unit!35391)

(assert (=> b!1076534 (= lt!478309 (addCommutativeForDiffKeys!751 lt!478301 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!478304 () ListLongMap!14721)

(assert (=> b!1076534 (= (-!717 lt!478305 #b0000000000000000000000000000000000000000000000000000000000000000) lt!478304)))

(declare-fun lt!478302 () tuple2!16740)

(declare-fun +!3198 (ListLongMap!14721 tuple2!16740) ListLongMap!14721)

(assert (=> b!1076534 (= lt!478305 (+!3198 lt!478304 lt!478302))))

(declare-fun lt!478310 () Unit!35391)

(declare-fun addThenRemoveForNewKeyIsSame!88 (ListLongMap!14721 (_ BitVec 64) V!39875) Unit!35391)

(assert (=> b!1076534 (= lt!478310 (addThenRemoveForNewKeyIsSame!88 lt!478304 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!478299 () tuple2!16740)

(assert (=> b!1076534 (= lt!478304 (+!3198 lt!478301 lt!478299))))

(declare-fun e!615428 () Bool)

(assert (=> b!1076534 e!615428))

(declare-fun res!717596 () Bool)

(assert (=> b!1076534 (=> (not res!717596) (not e!615428))))

(assert (=> b!1076534 (= res!717596 (= lt!478306 lt!478303))))

(assert (=> b!1076534 (= lt!478303 (+!3198 (+!3198 lt!478301 lt!478302) lt!478299))))

(assert (=> b!1076534 (= lt!478299 (tuple2!16741 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1076534 (= lt!478302 (tuple2!16741 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!478311 () ListLongMap!14721)

(declare-fun getCurrentListMap!4209 (array!69050 array!69048 (_ BitVec 32) (_ BitVec 32) V!39875 V!39875 (_ BitVec 32) Int) ListLongMap!14721)

(assert (=> b!1076534 (= lt!478311 (getCurrentListMap!4209 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1076534 (= lt!478306 (getCurrentListMap!4209 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076535 () Bool)

(assert (=> b!1076535 (= e!615428 (= lt!478311 (+!3198 lt!478300 lt!478299)))))

(declare-fun b!1076536 () Bool)

(declare-fun res!717595 () Bool)

(assert (=> b!1076536 (=> (not res!717595) (not e!615429))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69050 (_ BitVec 32)) Bool)

(assert (=> b!1076536 (= res!717595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1076537 () Bool)

(assert (=> b!1076537 (= e!615434 tp_is_empty!26055)))

(assert (= (and start!95280 res!717594) b!1076531))

(assert (= (and b!1076531 res!717593) b!1076536))

(assert (= (and b!1076536 res!717595) b!1076532))

(assert (= (and b!1076532 res!717592) b!1076533))

(assert (= (and b!1076533 (not res!717591)) b!1076534))

(assert (= (and b!1076534 res!717596) b!1076535))

(assert (= (and b!1076529 condMapEmpty!40828) mapIsEmpty!40828))

(assert (= (and b!1076529 (not condMapEmpty!40828)) mapNonEmpty!40828))

(get-info :version)

(assert (= (and mapNonEmpty!40828 ((_ is ValueCellFull!12324) mapValue!40828)) b!1076530))

(assert (= (and b!1076529 ((_ is ValueCellFull!12324) mapDefault!40828)) b!1076537))

(assert (= start!95280 b!1076529))

(declare-fun m!995629 () Bool)

(assert (=> b!1076534 m!995629))

(declare-fun m!995631 () Bool)

(assert (=> b!1076534 m!995631))

(declare-fun m!995633 () Bool)

(assert (=> b!1076534 m!995633))

(declare-fun m!995635 () Bool)

(assert (=> b!1076534 m!995635))

(declare-fun m!995637 () Bool)

(assert (=> b!1076534 m!995637))

(declare-fun m!995639 () Bool)

(assert (=> b!1076534 m!995639))

(assert (=> b!1076534 m!995633))

(declare-fun m!995641 () Bool)

(assert (=> b!1076534 m!995641))

(declare-fun m!995643 () Bool)

(assert (=> b!1076534 m!995643))

(declare-fun m!995645 () Bool)

(assert (=> b!1076534 m!995645))

(declare-fun m!995647 () Bool)

(assert (=> b!1076534 m!995647))

(declare-fun m!995649 () Bool)

(assert (=> b!1076532 m!995649))

(declare-fun m!995651 () Bool)

(assert (=> b!1076533 m!995651))

(declare-fun m!995653 () Bool)

(assert (=> b!1076533 m!995653))

(declare-fun m!995655 () Bool)

(assert (=> b!1076533 m!995655))

(declare-fun m!995657 () Bool)

(assert (=> b!1076536 m!995657))

(declare-fun m!995659 () Bool)

(assert (=> b!1076535 m!995659))

(declare-fun m!995661 () Bool)

(assert (=> mapNonEmpty!40828 m!995661))

(declare-fun m!995663 () Bool)

(assert (=> start!95280 m!995663))

(declare-fun m!995665 () Bool)

(assert (=> start!95280 m!995665))

(declare-fun m!995667 () Bool)

(assert (=> start!95280 m!995667))

(check-sat (not mapNonEmpty!40828) (not b!1076532) (not b_next!22245) (not b!1076534) tp_is_empty!26055 b_and!35241 (not start!95280) (not b!1076535) (not b!1076533) (not b!1076536))
(check-sat b_and!35241 (not b_next!22245))
