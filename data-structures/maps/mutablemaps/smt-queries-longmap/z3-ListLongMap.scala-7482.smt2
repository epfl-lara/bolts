; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94878 () Bool)

(assert start!94878)

(declare-fun b_free!22071 () Bool)

(declare-fun b_next!22071 () Bool)

(assert (=> start!94878 (= b_free!22071 (not b_next!22071))))

(declare-fun tp!77676 () Bool)

(declare-fun b_and!34931 () Bool)

(assert (=> start!94878 (= tp!77676 b_and!34931)))

(declare-fun b!1072405 () Bool)

(declare-fun res!715440 () Bool)

(declare-fun e!612577 () Bool)

(assert (=> b!1072405 (=> (not res!715440) (not e!612577))))

(declare-datatypes ((array!68690 0))(
  ( (array!68691 (arr!33036 (Array (_ BitVec 32) (_ BitVec 64))) (size!33573 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68690)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68690 (_ BitVec 32)) Bool)

(assert (=> b!1072405 (= res!715440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1072406 () Bool)

(declare-fun e!612571 () Bool)

(assert (=> b!1072406 (= e!612577 (not e!612571))))

(declare-fun res!715439 () Bool)

(assert (=> b!1072406 (=> res!715439 e!612571)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072406 (= res!715439 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39643 0))(
  ( (V!39644 (val!12991 Int)) )
))
(declare-datatypes ((tuple2!16606 0))(
  ( (tuple2!16607 (_1!8313 (_ BitVec 64)) (_2!8313 V!39643)) )
))
(declare-datatypes ((List!23186 0))(
  ( (Nil!23183) (Cons!23182 (h!24391 tuple2!16606) (t!32528 List!23186)) )
))
(declare-datatypes ((ListLongMap!14587 0))(
  ( (ListLongMap!14588 (toList!7309 List!23186)) )
))
(declare-fun lt!475408 () ListLongMap!14587)

(declare-fun lt!475405 () ListLongMap!14587)

(assert (=> b!1072406 (= lt!475408 lt!475405)))

(declare-fun zeroValueBefore!47 () V!39643)

(declare-datatypes ((ValueCell!12237 0))(
  ( (ValueCellFull!12237 (v!15609 V!39643)) (EmptyCell!12237) )
))
(declare-datatypes ((array!68692 0))(
  ( (array!68693 (arr!33037 (Array (_ BitVec 32) ValueCell!12237)) (size!33574 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68692)

(declare-fun minValue!907 () V!39643)

(declare-datatypes ((Unit!35279 0))(
  ( (Unit!35280) )
))
(declare-fun lt!475410 () Unit!35279)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39643)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!878 (array!68690 array!68692 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39643 V!39643 V!39643 V!39643 (_ BitVec 32) Int) Unit!35279)

(assert (=> b!1072406 (= lt!475410 (lemmaNoChangeToArrayThenSameMapNoExtras!878 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3839 (array!68690 array!68692 (_ BitVec 32) (_ BitVec 32) V!39643 V!39643 (_ BitVec 32) Int) ListLongMap!14587)

(assert (=> b!1072406 (= lt!475405 (getCurrentListMapNoExtraKeys!3839 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072406 (= lt!475408 (getCurrentListMapNoExtraKeys!3839 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!715443 () Bool)

(assert (=> start!94878 (=> (not res!715443) (not e!612577))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94878 (= res!715443 (validMask!0 mask!1515))))

(assert (=> start!94878 e!612577))

(assert (=> start!94878 true))

(declare-fun tp_is_empty!25881 () Bool)

(assert (=> start!94878 tp_is_empty!25881))

(declare-fun e!612574 () Bool)

(declare-fun array_inv!25394 (array!68692) Bool)

(assert (=> start!94878 (and (array_inv!25394 _values!955) e!612574)))

(assert (=> start!94878 tp!77676))

(declare-fun array_inv!25395 (array!68690) Bool)

(assert (=> start!94878 (array_inv!25395 _keys!1163)))

(declare-fun b!1072407 () Bool)

(declare-fun res!715441 () Bool)

(assert (=> b!1072407 (=> (not res!715441) (not e!612577))))

(declare-datatypes ((List!23187 0))(
  ( (Nil!23184) (Cons!23183 (h!24392 (_ BitVec 64)) (t!32529 List!23187)) )
))
(declare-fun arrayNoDuplicates!0 (array!68690 (_ BitVec 32) List!23187) Bool)

(assert (=> b!1072407 (= res!715441 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23184))))

(declare-fun lt!475412 () tuple2!16606)

(declare-fun b!1072408 () Bool)

(declare-fun e!612576 () Bool)

(declare-fun lt!475409 () ListLongMap!14587)

(declare-fun +!3164 (ListLongMap!14587 tuple2!16606) ListLongMap!14587)

(assert (=> b!1072408 (= e!612576 (= lt!475409 (+!3164 lt!475405 lt!475412)))))

(declare-fun mapNonEmpty!40531 () Bool)

(declare-fun mapRes!40531 () Bool)

(declare-fun tp!77675 () Bool)

(declare-fun e!612573 () Bool)

(assert (=> mapNonEmpty!40531 (= mapRes!40531 (and tp!77675 e!612573))))

(declare-fun mapRest!40531 () (Array (_ BitVec 32) ValueCell!12237))

(declare-fun mapValue!40531 () ValueCell!12237)

(declare-fun mapKey!40531 () (_ BitVec 32))

(assert (=> mapNonEmpty!40531 (= (arr!33037 _values!955) (store mapRest!40531 mapKey!40531 mapValue!40531))))

(declare-fun b!1072409 () Bool)

(assert (=> b!1072409 (= e!612571 true)))

(declare-fun lt!475403 () ListLongMap!14587)

(declare-fun lt!475406 () ListLongMap!14587)

(declare-fun -!699 (ListLongMap!14587 (_ BitVec 64)) ListLongMap!14587)

(assert (=> b!1072409 (= lt!475403 (-!699 lt!475406 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!475413 () ListLongMap!14587)

(declare-fun lt!475407 () ListLongMap!14587)

(assert (=> b!1072409 (= lt!475413 lt!475407)))

(declare-fun lt!475411 () Unit!35279)

(declare-fun addCommutativeForDiffKeys!743 (ListLongMap!14587 (_ BitVec 64) V!39643 (_ BitVec 64) V!39643) Unit!35279)

(assert (=> b!1072409 (= lt!475411 (addCommutativeForDiffKeys!743 lt!475408 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!475404 () ListLongMap!14587)

(assert (=> b!1072409 (= (-!699 lt!475407 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475404)))

(declare-fun lt!475402 () tuple2!16606)

(assert (=> b!1072409 (= lt!475407 (+!3164 lt!475404 lt!475402))))

(declare-fun lt!475414 () Unit!35279)

(declare-fun addThenRemoveForNewKeyIsSame!73 (ListLongMap!14587 (_ BitVec 64) V!39643) Unit!35279)

(assert (=> b!1072409 (= lt!475414 (addThenRemoveForNewKeyIsSame!73 lt!475404 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1072409 (= lt!475404 (+!3164 lt!475408 lt!475412))))

(assert (=> b!1072409 e!612576))

(declare-fun res!715442 () Bool)

(assert (=> b!1072409 (=> (not res!715442) (not e!612576))))

(assert (=> b!1072409 (= res!715442 (= lt!475406 lt!475413))))

(assert (=> b!1072409 (= lt!475413 (+!3164 (+!3164 lt!475408 lt!475402) lt!475412))))

(assert (=> b!1072409 (= lt!475412 (tuple2!16607 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072409 (= lt!475402 (tuple2!16607 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun getCurrentListMap!4171 (array!68690 array!68692 (_ BitVec 32) (_ BitVec 32) V!39643 V!39643 (_ BitVec 32) Int) ListLongMap!14587)

(assert (=> b!1072409 (= lt!475409 (getCurrentListMap!4171 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072409 (= lt!475406 (getCurrentListMap!4171 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072410 () Bool)

(assert (=> b!1072410 (= e!612573 tp_is_empty!25881)))

(declare-fun b!1072411 () Bool)

(declare-fun e!612572 () Bool)

(assert (=> b!1072411 (= e!612572 tp_is_empty!25881)))

(declare-fun b!1072412 () Bool)

(declare-fun res!715438 () Bool)

(assert (=> b!1072412 (=> (not res!715438) (not e!612577))))

(assert (=> b!1072412 (= res!715438 (and (= (size!33574 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33573 _keys!1163) (size!33574 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072413 () Bool)

(assert (=> b!1072413 (= e!612574 (and e!612572 mapRes!40531))))

(declare-fun condMapEmpty!40531 () Bool)

(declare-fun mapDefault!40531 () ValueCell!12237)

(assert (=> b!1072413 (= condMapEmpty!40531 (= (arr!33037 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12237)) mapDefault!40531)))))

(declare-fun mapIsEmpty!40531 () Bool)

(assert (=> mapIsEmpty!40531 mapRes!40531))

(assert (= (and start!94878 res!715443) b!1072412))

(assert (= (and b!1072412 res!715438) b!1072405))

(assert (= (and b!1072405 res!715440) b!1072407))

(assert (= (and b!1072407 res!715441) b!1072406))

(assert (= (and b!1072406 (not res!715439)) b!1072409))

(assert (= (and b!1072409 res!715442) b!1072408))

(assert (= (and b!1072413 condMapEmpty!40531) mapIsEmpty!40531))

(assert (= (and b!1072413 (not condMapEmpty!40531)) mapNonEmpty!40531))

(get-info :version)

(assert (= (and mapNonEmpty!40531 ((_ is ValueCellFull!12237) mapValue!40531)) b!1072410))

(assert (= (and b!1072413 ((_ is ValueCellFull!12237) mapDefault!40531)) b!1072411))

(assert (= start!94878 b!1072413))

(declare-fun m!991499 () Bool)

(assert (=> b!1072408 m!991499))

(declare-fun m!991501 () Bool)

(assert (=> b!1072409 m!991501))

(declare-fun m!991503 () Bool)

(assert (=> b!1072409 m!991503))

(declare-fun m!991505 () Bool)

(assert (=> b!1072409 m!991505))

(assert (=> b!1072409 m!991503))

(declare-fun m!991507 () Bool)

(assert (=> b!1072409 m!991507))

(declare-fun m!991509 () Bool)

(assert (=> b!1072409 m!991509))

(declare-fun m!991511 () Bool)

(assert (=> b!1072409 m!991511))

(declare-fun m!991513 () Bool)

(assert (=> b!1072409 m!991513))

(declare-fun m!991515 () Bool)

(assert (=> b!1072409 m!991515))

(declare-fun m!991517 () Bool)

(assert (=> b!1072409 m!991517))

(declare-fun m!991519 () Bool)

(assert (=> b!1072409 m!991519))

(declare-fun m!991521 () Bool)

(assert (=> start!94878 m!991521))

(declare-fun m!991523 () Bool)

(assert (=> start!94878 m!991523))

(declare-fun m!991525 () Bool)

(assert (=> start!94878 m!991525))

(declare-fun m!991527 () Bool)

(assert (=> b!1072406 m!991527))

(declare-fun m!991529 () Bool)

(assert (=> b!1072406 m!991529))

(declare-fun m!991531 () Bool)

(assert (=> b!1072406 m!991531))

(declare-fun m!991533 () Bool)

(assert (=> b!1072405 m!991533))

(declare-fun m!991535 () Bool)

(assert (=> b!1072407 m!991535))

(declare-fun m!991537 () Bool)

(assert (=> mapNonEmpty!40531 m!991537))

(check-sat (not mapNonEmpty!40531) b_and!34931 (not b!1072405) (not b!1072409) (not b!1072406) tp_is_empty!25881 (not b!1072408) (not b!1072407) (not b_next!22071) (not start!94878))
(check-sat b_and!34931 (not b_next!22071))
