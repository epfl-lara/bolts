; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94812 () Bool)

(assert start!94812)

(declare-fun b_free!22029 () Bool)

(declare-fun b_next!22029 () Bool)

(assert (=> start!94812 (= b_free!22029 (not b_next!22029))))

(declare-fun tp!77546 () Bool)

(declare-fun b_and!34877 () Bool)

(assert (=> start!94812 (= tp!77546 b_and!34877)))

(declare-fun mapIsEmpty!40465 () Bool)

(declare-fun mapRes!40465 () Bool)

(assert (=> mapIsEmpty!40465 mapRes!40465))

(declare-fun mapNonEmpty!40465 () Bool)

(declare-fun tp!77547 () Bool)

(declare-fun e!612017 () Bool)

(assert (=> mapNonEmpty!40465 (= mapRes!40465 (and tp!77547 e!612017))))

(declare-fun mapKey!40465 () (_ BitVec 32))

(declare-datatypes ((V!39587 0))(
  ( (V!39588 (val!12970 Int)) )
))
(declare-datatypes ((ValueCell!12216 0))(
  ( (ValueCellFull!12216 (v!15587 V!39587)) (EmptyCell!12216) )
))
(declare-fun mapRest!40465 () (Array (_ BitVec 32) ValueCell!12216))

(declare-fun mapValue!40465 () ValueCell!12216)

(declare-datatypes ((array!68606 0))(
  ( (array!68607 (arr!32995 (Array (_ BitVec 32) ValueCell!12216)) (size!33532 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68606)

(assert (=> mapNonEmpty!40465 (= (arr!32995 _values!955) (store mapRest!40465 mapKey!40465 mapValue!40465))))

(declare-fun b!1071651 () Bool)

(declare-fun e!612015 () Bool)

(declare-fun e!612012 () Bool)

(assert (=> b!1071651 (= e!612015 e!612012)))

(declare-fun res!714980 () Bool)

(assert (=> b!1071651 (=> res!714980 e!612012)))

(declare-datatypes ((tuple2!16572 0))(
  ( (tuple2!16573 (_1!8296 (_ BitVec 64)) (_2!8296 V!39587)) )
))
(declare-datatypes ((List!23154 0))(
  ( (Nil!23151) (Cons!23150 (h!24359 tuple2!16572) (t!32494 List!23154)) )
))
(declare-datatypes ((ListLongMap!14553 0))(
  ( (ListLongMap!14554 (toList!7292 List!23154)) )
))
(declare-fun lt!474427 () ListLongMap!14553)

(declare-fun lt!474431 () ListLongMap!14553)

(declare-fun -!684 (ListLongMap!14553 (_ BitVec 64)) ListLongMap!14553)

(assert (=> b!1071651 (= res!714980 (not (= (-!684 lt!474427 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474431)))))

(declare-fun lt!474430 () ListLongMap!14553)

(declare-fun lt!474428 () ListLongMap!14553)

(assert (=> b!1071651 (= lt!474430 lt!474428)))

(declare-fun zeroValueBefore!47 () V!39587)

(declare-fun lt!474432 () ListLongMap!14553)

(declare-datatypes ((Unit!35245 0))(
  ( (Unit!35246) )
))
(declare-fun lt!474426 () Unit!35245)

(declare-fun minValue!907 () V!39587)

(declare-fun addCommutativeForDiffKeys!728 (ListLongMap!14553 (_ BitVec 64) V!39587 (_ BitVec 64) V!39587) Unit!35245)

(assert (=> b!1071651 (= lt!474426 (addCommutativeForDiffKeys!728 lt!474432 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!474425 () ListLongMap!14553)

(assert (=> b!1071651 (= (-!684 lt!474428 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474425)))

(declare-fun lt!474423 () tuple2!16572)

(declare-fun +!3148 (ListLongMap!14553 tuple2!16572) ListLongMap!14553)

(assert (=> b!1071651 (= lt!474428 (+!3148 lt!474425 lt!474423))))

(declare-fun lt!474422 () Unit!35245)

(declare-fun addThenRemoveForNewKeyIsSame!58 (ListLongMap!14553 (_ BitVec 64) V!39587) Unit!35245)

(assert (=> b!1071651 (= lt!474422 (addThenRemoveForNewKeyIsSame!58 lt!474425 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!474424 () tuple2!16572)

(assert (=> b!1071651 (= lt!474425 (+!3148 lt!474432 lt!474424))))

(declare-fun e!612016 () Bool)

(assert (=> b!1071651 e!612016))

(declare-fun res!714977 () Bool)

(assert (=> b!1071651 (=> (not res!714977) (not e!612016))))

(assert (=> b!1071651 (= res!714977 (= lt!474427 lt!474430))))

(assert (=> b!1071651 (= lt!474430 (+!3148 (+!3148 lt!474432 lt!474423) lt!474424))))

(assert (=> b!1071651 (= lt!474424 (tuple2!16573 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071651 (= lt!474423 (tuple2!16573 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((array!68608 0))(
  ( (array!68609 (arr!32996 (Array (_ BitVec 32) (_ BitVec 64))) (size!33533 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68608)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39587)

(declare-fun getCurrentListMap!4156 (array!68608 array!68606 (_ BitVec 32) (_ BitVec 32) V!39587 V!39587 (_ BitVec 32) Int) ListLongMap!14553)

(assert (=> b!1071651 (= lt!474431 (getCurrentListMap!4156 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1071651 (= lt!474427 (getCurrentListMap!4156 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071652 () Bool)

(declare-fun tp_is_empty!25839 () Bool)

(assert (=> b!1071652 (= e!612017 tp_is_empty!25839)))

(declare-fun b!1071653 () Bool)

(declare-fun res!714979 () Bool)

(declare-fun e!612013 () Bool)

(assert (=> b!1071653 (=> (not res!714979) (not e!612013))))

(assert (=> b!1071653 (= res!714979 (and (= (size!33532 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33533 _keys!1163) (size!33532 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1071654 () Bool)

(assert (=> b!1071654 (= e!612013 (not e!612015))))

(declare-fun res!714975 () Bool)

(assert (=> b!1071654 (=> res!714975 e!612015)))

(assert (=> b!1071654 (= res!714975 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!474429 () ListLongMap!14553)

(assert (=> b!1071654 (= lt!474432 lt!474429)))

(declare-fun lt!474421 () Unit!35245)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!863 (array!68608 array!68606 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39587 V!39587 V!39587 V!39587 (_ BitVec 32) Int) Unit!35245)

(assert (=> b!1071654 (= lt!474421 (lemmaNoChangeToArrayThenSameMapNoExtras!863 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3824 (array!68608 array!68606 (_ BitVec 32) (_ BitVec 32) V!39587 V!39587 (_ BitVec 32) Int) ListLongMap!14553)

(assert (=> b!1071654 (= lt!474429 (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071654 (= lt!474432 (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!714981 () Bool)

(assert (=> start!94812 (=> (not res!714981) (not e!612013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94812 (= res!714981 (validMask!0 mask!1515))))

(assert (=> start!94812 e!612013))

(assert (=> start!94812 true))

(assert (=> start!94812 tp_is_empty!25839))

(declare-fun e!612019 () Bool)

(declare-fun array_inv!25366 (array!68606) Bool)

(assert (=> start!94812 (and (array_inv!25366 _values!955) e!612019)))

(assert (=> start!94812 tp!77546))

(declare-fun array_inv!25367 (array!68608) Bool)

(assert (=> start!94812 (array_inv!25367 _keys!1163)))

(declare-fun b!1071655 () Bool)

(declare-fun res!714978 () Bool)

(assert (=> b!1071655 (=> (not res!714978) (not e!612013))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68608 (_ BitVec 32)) Bool)

(assert (=> b!1071655 (= res!714978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1071656 () Bool)

(declare-fun e!612018 () Bool)

(assert (=> b!1071656 (= e!612019 (and e!612018 mapRes!40465))))

(declare-fun condMapEmpty!40465 () Bool)

(declare-fun mapDefault!40465 () ValueCell!12216)

(assert (=> b!1071656 (= condMapEmpty!40465 (= (arr!32995 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12216)) mapDefault!40465)))))

(declare-fun b!1071657 () Bool)

(declare-fun res!714976 () Bool)

(assert (=> b!1071657 (=> (not res!714976) (not e!612013))))

(declare-datatypes ((List!23155 0))(
  ( (Nil!23152) (Cons!23151 (h!24360 (_ BitVec 64)) (t!32495 List!23155)) )
))
(declare-fun arrayNoDuplicates!0 (array!68608 (_ BitVec 32) List!23155) Bool)

(assert (=> b!1071657 (= res!714976 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23152))))

(declare-fun b!1071658 () Bool)

(assert (=> b!1071658 (= e!612016 (= lt!474431 (+!3148 lt!474429 lt!474424)))))

(declare-fun b!1071659 () Bool)

(assert (=> b!1071659 (= e!612012 (bvsle #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(declare-fun b!1071660 () Bool)

(assert (=> b!1071660 (= e!612018 tp_is_empty!25839)))

(assert (= (and start!94812 res!714981) b!1071653))

(assert (= (and b!1071653 res!714979) b!1071655))

(assert (= (and b!1071655 res!714978) b!1071657))

(assert (= (and b!1071657 res!714976) b!1071654))

(assert (= (and b!1071654 (not res!714975)) b!1071651))

(assert (= (and b!1071651 res!714977) b!1071658))

(assert (= (and b!1071651 (not res!714980)) b!1071659))

(assert (= (and b!1071656 condMapEmpty!40465) mapIsEmpty!40465))

(assert (= (and b!1071656 (not condMapEmpty!40465)) mapNonEmpty!40465))

(get-info :version)

(assert (= (and mapNonEmpty!40465 ((_ is ValueCellFull!12216) mapValue!40465)) b!1071652))

(assert (= (and b!1071656 ((_ is ValueCellFull!12216) mapDefault!40465)) b!1071660))

(assert (= start!94812 b!1071656))

(declare-fun m!990415 () Bool)

(assert (=> start!94812 m!990415))

(declare-fun m!990417 () Bool)

(assert (=> start!94812 m!990417))

(declare-fun m!990419 () Bool)

(assert (=> start!94812 m!990419))

(declare-fun m!990421 () Bool)

(assert (=> b!1071658 m!990421))

(declare-fun m!990423 () Bool)

(assert (=> b!1071654 m!990423))

(declare-fun m!990425 () Bool)

(assert (=> b!1071654 m!990425))

(declare-fun m!990427 () Bool)

(assert (=> b!1071654 m!990427))

(declare-fun m!990429 () Bool)

(assert (=> b!1071657 m!990429))

(declare-fun m!990431 () Bool)

(assert (=> b!1071655 m!990431))

(declare-fun m!990433 () Bool)

(assert (=> mapNonEmpty!40465 m!990433))

(declare-fun m!990435 () Bool)

(assert (=> b!1071651 m!990435))

(declare-fun m!990437 () Bool)

(assert (=> b!1071651 m!990437))

(declare-fun m!990439 () Bool)

(assert (=> b!1071651 m!990439))

(declare-fun m!990441 () Bool)

(assert (=> b!1071651 m!990441))

(declare-fun m!990443 () Bool)

(assert (=> b!1071651 m!990443))

(declare-fun m!990445 () Bool)

(assert (=> b!1071651 m!990445))

(declare-fun m!990447 () Bool)

(assert (=> b!1071651 m!990447))

(declare-fun m!990449 () Bool)

(assert (=> b!1071651 m!990449))

(declare-fun m!990451 () Bool)

(assert (=> b!1071651 m!990451))

(declare-fun m!990453 () Bool)

(assert (=> b!1071651 m!990453))

(assert (=> b!1071651 m!990441))

(check-sat (not b!1071657) (not b!1071658) tp_is_empty!25839 b_and!34877 (not mapNonEmpty!40465) (not b!1071651) (not b_next!22029) (not b!1071654) (not start!94812) (not b!1071655))
(check-sat b_and!34877 (not b_next!22029))
(get-model)

(declare-fun d!129257 () Bool)

(declare-fun e!612046 () Bool)

(assert (=> d!129257 e!612046))

(declare-fun res!715008 () Bool)

(assert (=> d!129257 (=> (not res!715008) (not e!612046))))

(declare-fun lt!474480 () ListLongMap!14553)

(declare-fun contains!6334 (ListLongMap!14553 (_ BitVec 64)) Bool)

(assert (=> d!129257 (= res!715008 (contains!6334 lt!474480 (_1!8296 lt!474424)))))

(declare-fun lt!474479 () List!23154)

(assert (=> d!129257 (= lt!474480 (ListLongMap!14554 lt!474479))))

(declare-fun lt!474477 () Unit!35245)

(declare-fun lt!474478 () Unit!35245)

(assert (=> d!129257 (= lt!474477 lt!474478)))

(declare-datatypes ((Option!657 0))(
  ( (Some!656 (v!15589 V!39587)) (None!655) )
))
(declare-fun getValueByKey!606 (List!23154 (_ BitVec 64)) Option!657)

(assert (=> d!129257 (= (getValueByKey!606 lt!474479 (_1!8296 lt!474424)) (Some!656 (_2!8296 lt!474424)))))

(declare-fun lemmaContainsTupThenGetReturnValue!285 (List!23154 (_ BitVec 64) V!39587) Unit!35245)

(assert (=> d!129257 (= lt!474478 (lemmaContainsTupThenGetReturnValue!285 lt!474479 (_1!8296 lt!474424) (_2!8296 lt!474424)))))

(declare-fun insertStrictlySorted!377 (List!23154 (_ BitVec 64) V!39587) List!23154)

(assert (=> d!129257 (= lt!474479 (insertStrictlySorted!377 (toList!7292 lt!474429) (_1!8296 lt!474424) (_2!8296 lt!474424)))))

(assert (=> d!129257 (= (+!3148 lt!474429 lt!474424) lt!474480)))

(declare-fun b!1071695 () Bool)

(declare-fun res!715007 () Bool)

(assert (=> b!1071695 (=> (not res!715007) (not e!612046))))

(assert (=> b!1071695 (= res!715007 (= (getValueByKey!606 (toList!7292 lt!474480) (_1!8296 lt!474424)) (Some!656 (_2!8296 lt!474424))))))

(declare-fun b!1071696 () Bool)

(declare-fun contains!6335 (List!23154 tuple2!16572) Bool)

(assert (=> b!1071696 (= e!612046 (contains!6335 (toList!7292 lt!474480) lt!474424))))

(assert (= (and d!129257 res!715008) b!1071695))

(assert (= (and b!1071695 res!715007) b!1071696))

(declare-fun m!990495 () Bool)

(assert (=> d!129257 m!990495))

(declare-fun m!990497 () Bool)

(assert (=> d!129257 m!990497))

(declare-fun m!990499 () Bool)

(assert (=> d!129257 m!990499))

(declare-fun m!990501 () Bool)

(assert (=> d!129257 m!990501))

(declare-fun m!990503 () Bool)

(assert (=> b!1071695 m!990503))

(declare-fun m!990505 () Bool)

(assert (=> b!1071696 m!990505))

(assert (=> b!1071658 d!129257))

(declare-fun b!1071707 () Bool)

(declare-fun e!612058 () Bool)

(declare-fun e!612055 () Bool)

(assert (=> b!1071707 (= e!612058 e!612055)))

(declare-fun c!107600 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1071707 (= c!107600 (validKeyInArray!0 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1071708 () Bool)

(declare-fun call!45205 () Bool)

(assert (=> b!1071708 (= e!612055 call!45205)))

(declare-fun bm!45202 () Bool)

(assert (=> bm!45202 (= call!45205 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107600 (Cons!23151 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000) Nil!23152) Nil!23152)))))

(declare-fun d!129259 () Bool)

(declare-fun res!715016 () Bool)

(declare-fun e!612056 () Bool)

(assert (=> d!129259 (=> res!715016 e!612056)))

(assert (=> d!129259 (= res!715016 (bvsge #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(assert (=> d!129259 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23152) e!612056)))

(declare-fun b!1071709 () Bool)

(assert (=> b!1071709 (= e!612055 call!45205)))

(declare-fun b!1071710 () Bool)

(assert (=> b!1071710 (= e!612056 e!612058)))

(declare-fun res!715015 () Bool)

(assert (=> b!1071710 (=> (not res!715015) (not e!612058))))

(declare-fun e!612057 () Bool)

(assert (=> b!1071710 (= res!715015 (not e!612057))))

(declare-fun res!715017 () Bool)

(assert (=> b!1071710 (=> (not res!715017) (not e!612057))))

(assert (=> b!1071710 (= res!715017 (validKeyInArray!0 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1071711 () Bool)

(declare-fun contains!6336 (List!23155 (_ BitVec 64)) Bool)

(assert (=> b!1071711 (= e!612057 (contains!6336 Nil!23152 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!129259 (not res!715016)) b!1071710))

(assert (= (and b!1071710 res!715017) b!1071711))

(assert (= (and b!1071710 res!715015) b!1071707))

(assert (= (and b!1071707 c!107600) b!1071709))

(assert (= (and b!1071707 (not c!107600)) b!1071708))

(assert (= (or b!1071709 b!1071708) bm!45202))

(declare-fun m!990507 () Bool)

(assert (=> b!1071707 m!990507))

(assert (=> b!1071707 m!990507))

(declare-fun m!990509 () Bool)

(assert (=> b!1071707 m!990509))

(assert (=> bm!45202 m!990507))

(declare-fun m!990511 () Bool)

(assert (=> bm!45202 m!990511))

(assert (=> b!1071710 m!990507))

(assert (=> b!1071710 m!990507))

(assert (=> b!1071710 m!990509))

(assert (=> b!1071711 m!990507))

(assert (=> b!1071711 m!990507))

(declare-fun m!990513 () Bool)

(assert (=> b!1071711 m!990513))

(assert (=> b!1071657 d!129259))

(declare-fun d!129261 () Bool)

(declare-fun lt!474483 () ListLongMap!14553)

(assert (=> d!129261 (not (contains!6334 lt!474483 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!74 (List!23154 (_ BitVec 64)) List!23154)

(assert (=> d!129261 (= lt!474483 (ListLongMap!14554 (removeStrictlySorted!74 (toList!7292 lt!474427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129261 (= (-!684 lt!474427 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474483)))

(declare-fun bs!31571 () Bool)

(assert (= bs!31571 d!129261))

(declare-fun m!990515 () Bool)

(assert (=> bs!31571 m!990515))

(declare-fun m!990517 () Bool)

(assert (=> bs!31571 m!990517))

(assert (=> b!1071651 d!129261))

(declare-fun d!129263 () Bool)

(declare-fun e!612097 () Bool)

(assert (=> d!129263 e!612097))

(declare-fun res!715040 () Bool)

(assert (=> d!129263 (=> (not res!715040) (not e!612097))))

(assert (=> d!129263 (= res!715040 (or (bvsge #b00000000000000000000000000000000 (size!33533 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))))

(declare-fun lt!474544 () ListLongMap!14553)

(declare-fun lt!474542 () ListLongMap!14553)

(assert (=> d!129263 (= lt!474544 lt!474542)))

(declare-fun lt!474546 () Unit!35245)

(declare-fun e!612089 () Unit!35245)

(assert (=> d!129263 (= lt!474546 e!612089)))

(declare-fun c!107613 () Bool)

(declare-fun e!612096 () Bool)

(assert (=> d!129263 (= c!107613 e!612096)))

(declare-fun res!715036 () Bool)

(assert (=> d!129263 (=> (not res!715036) (not e!612096))))

(assert (=> d!129263 (= res!715036 (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(declare-fun e!612087 () ListLongMap!14553)

(assert (=> d!129263 (= lt!474542 e!612087)))

(declare-fun c!107614 () Bool)

(assert (=> d!129263 (= c!107614 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129263 (validMask!0 mask!1515)))

(assert (=> d!129263 (= (getCurrentListMap!4156 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!474544)))

(declare-fun bm!45217 () Bool)

(declare-fun call!45220 () ListLongMap!14553)

(declare-fun call!45225 () ListLongMap!14553)

(assert (=> bm!45217 (= call!45220 call!45225)))

(declare-fun b!1071754 () Bool)

(declare-fun e!612091 () Bool)

(declare-fun e!612085 () Bool)

(assert (=> b!1071754 (= e!612091 e!612085)))

(declare-fun res!715039 () Bool)

(declare-fun call!45221 () Bool)

(assert (=> b!1071754 (= res!715039 call!45221)))

(assert (=> b!1071754 (=> (not res!715039) (not e!612085))))

(declare-fun b!1071755 () Bool)

(assert (=> b!1071755 (= e!612097 e!612091)))

(declare-fun c!107616 () Bool)

(assert (=> b!1071755 (= c!107616 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1071756 () Bool)

(assert (=> b!1071756 (= e!612096 (validKeyInArray!0 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1071757 () Bool)

(declare-fun e!612094 () Bool)

(assert (=> b!1071757 (= e!612094 (validKeyInArray!0 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1071758 () Bool)

(declare-fun e!612086 () ListLongMap!14553)

(declare-fun call!45224 () ListLongMap!14553)

(assert (=> b!1071758 (= e!612086 call!45224)))

(declare-fun b!1071759 () Bool)

(declare-fun res!715043 () Bool)

(assert (=> b!1071759 (=> (not res!715043) (not e!612097))))

(declare-fun e!612093 () Bool)

(assert (=> b!1071759 (= res!715043 e!612093)))

(declare-fun c!107617 () Bool)

(assert (=> b!1071759 (= c!107617 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1071760 () Bool)

(declare-fun e!612090 () ListLongMap!14553)

(assert (=> b!1071760 (= e!612087 e!612090)))

(declare-fun c!107618 () Bool)

(assert (=> b!1071760 (= c!107618 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!612092 () Bool)

(declare-fun b!1071761 () Bool)

(declare-fun apply!965 (ListLongMap!14553 (_ BitVec 64)) V!39587)

(declare-fun get!17179 (ValueCell!12216 V!39587) V!39587)

(declare-fun dynLambda!2041 (Int (_ BitVec 64)) V!39587)

(assert (=> b!1071761 (= e!612092 (= (apply!965 lt!474544 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)) (get!17179 (select (arr!32995 _values!955) #b00000000000000000000000000000000) (dynLambda!2041 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1071761 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33532 _values!955)))))

(assert (=> b!1071761 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(declare-fun b!1071762 () Bool)

(declare-fun call!45222 () Bool)

(assert (=> b!1071762 (= e!612093 (not call!45222))))

(declare-fun bm!45218 () Bool)

(declare-fun call!45223 () ListLongMap!14553)

(assert (=> bm!45218 (= call!45223 (+!3148 (ite c!107614 call!45225 (ite c!107618 call!45220 call!45224)) (ite (or c!107614 c!107618) (tuple2!16573 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!47) (tuple2!16573 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1071763 () Bool)

(declare-fun e!612095 () Bool)

(assert (=> b!1071763 (= e!612095 e!612092)))

(declare-fun res!715037 () Bool)

(assert (=> b!1071763 (=> (not res!715037) (not e!612092))))

(assert (=> b!1071763 (= res!715037 (contains!6334 lt!474544 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1071763 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(declare-fun b!1071764 () Bool)

(assert (=> b!1071764 (= e!612085 (= (apply!965 lt!474544 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun bm!45219 () Bool)

(assert (=> bm!45219 (= call!45224 call!45220)))

(declare-fun b!1071765 () Bool)

(declare-fun e!612088 () Bool)

(assert (=> b!1071765 (= e!612093 e!612088)))

(declare-fun res!715044 () Bool)

(assert (=> b!1071765 (= res!715044 call!45222)))

(assert (=> b!1071765 (=> (not res!715044) (not e!612088))))

(declare-fun b!1071766 () Bool)

(declare-fun lt!474541 () Unit!35245)

(assert (=> b!1071766 (= e!612089 lt!474541)))

(declare-fun lt!474539 () ListLongMap!14553)

(assert (=> b!1071766 (= lt!474539 (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!474545 () (_ BitVec 64))

(assert (=> b!1071766 (= lt!474545 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!474535 () (_ BitVec 64))

(assert (=> b!1071766 (= lt!474535 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!474548 () Unit!35245)

(declare-fun addStillContains!648 (ListLongMap!14553 (_ BitVec 64) V!39587 (_ BitVec 64)) Unit!35245)

(assert (=> b!1071766 (= lt!474548 (addStillContains!648 lt!474539 lt!474545 zeroValueAfter!47 lt!474535))))

(assert (=> b!1071766 (contains!6334 (+!3148 lt!474539 (tuple2!16573 lt!474545 zeroValueAfter!47)) lt!474535)))

(declare-fun lt!474540 () Unit!35245)

(assert (=> b!1071766 (= lt!474540 lt!474548)))

(declare-fun lt!474533 () ListLongMap!14553)

(assert (=> b!1071766 (= lt!474533 (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!474543 () (_ BitVec 64))

(assert (=> b!1071766 (= lt!474543 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!474529 () (_ BitVec 64))

(assert (=> b!1071766 (= lt!474529 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!474537 () Unit!35245)

(declare-fun addApplyDifferent!500 (ListLongMap!14553 (_ BitVec 64) V!39587 (_ BitVec 64)) Unit!35245)

(assert (=> b!1071766 (= lt!474537 (addApplyDifferent!500 lt!474533 lt!474543 minValue!907 lt!474529))))

(assert (=> b!1071766 (= (apply!965 (+!3148 lt!474533 (tuple2!16573 lt!474543 minValue!907)) lt!474529) (apply!965 lt!474533 lt!474529))))

(declare-fun lt!474538 () Unit!35245)

(assert (=> b!1071766 (= lt!474538 lt!474537)))

(declare-fun lt!474549 () ListLongMap!14553)

(assert (=> b!1071766 (= lt!474549 (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!474531 () (_ BitVec 64))

(assert (=> b!1071766 (= lt!474531 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!474547 () (_ BitVec 64))

(assert (=> b!1071766 (= lt!474547 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!474534 () Unit!35245)

(assert (=> b!1071766 (= lt!474534 (addApplyDifferent!500 lt!474549 lt!474531 zeroValueAfter!47 lt!474547))))

(assert (=> b!1071766 (= (apply!965 (+!3148 lt!474549 (tuple2!16573 lt!474531 zeroValueAfter!47)) lt!474547) (apply!965 lt!474549 lt!474547))))

(declare-fun lt!474530 () Unit!35245)

(assert (=> b!1071766 (= lt!474530 lt!474534)))

(declare-fun lt!474536 () ListLongMap!14553)

(assert (=> b!1071766 (= lt!474536 (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!474528 () (_ BitVec 64))

(assert (=> b!1071766 (= lt!474528 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!474532 () (_ BitVec 64))

(assert (=> b!1071766 (= lt!474532 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1071766 (= lt!474541 (addApplyDifferent!500 lt!474536 lt!474528 minValue!907 lt!474532))))

(assert (=> b!1071766 (= (apply!965 (+!3148 lt!474536 (tuple2!16573 lt!474528 minValue!907)) lt!474532) (apply!965 lt!474536 lt!474532))))

(declare-fun bm!45220 () Bool)

(assert (=> bm!45220 (= call!45221 (contains!6334 lt!474544 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1071767 () Bool)

(declare-fun res!715042 () Bool)

(assert (=> b!1071767 (=> (not res!715042) (not e!612097))))

(assert (=> b!1071767 (= res!715042 e!612095)))

(declare-fun res!715041 () Bool)

(assert (=> b!1071767 (=> res!715041 e!612095)))

(assert (=> b!1071767 (= res!715041 (not e!612094))))

(declare-fun res!715038 () Bool)

(assert (=> b!1071767 (=> (not res!715038) (not e!612094))))

(assert (=> b!1071767 (= res!715038 (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(declare-fun b!1071768 () Bool)

(assert (=> b!1071768 (= e!612088 (= (apply!965 lt!474544 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!47))))

(declare-fun b!1071769 () Bool)

(declare-fun c!107615 () Bool)

(assert (=> b!1071769 (= c!107615 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1071769 (= e!612090 e!612086)))

(declare-fun b!1071770 () Bool)

(assert (=> b!1071770 (= e!612091 (not call!45221))))

(declare-fun b!1071771 () Bool)

(declare-fun Unit!35249 () Unit!35245)

(assert (=> b!1071771 (= e!612089 Unit!35249)))

(declare-fun b!1071772 () Bool)

(declare-fun call!45226 () ListLongMap!14553)

(assert (=> b!1071772 (= e!612090 call!45226)))

(declare-fun b!1071773 () Bool)

(assert (=> b!1071773 (= e!612087 (+!3148 call!45223 (tuple2!16573 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun bm!45221 () Bool)

(assert (=> bm!45221 (= call!45225 (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071774 () Bool)

(assert (=> b!1071774 (= e!612086 call!45226)))

(declare-fun bm!45222 () Bool)

(assert (=> bm!45222 (= call!45226 call!45223)))

(declare-fun bm!45223 () Bool)

(assert (=> bm!45223 (= call!45222 (contains!6334 lt!474544 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!129263 c!107614) b!1071773))

(assert (= (and d!129263 (not c!107614)) b!1071760))

(assert (= (and b!1071760 c!107618) b!1071772))

(assert (= (and b!1071760 (not c!107618)) b!1071769))

(assert (= (and b!1071769 c!107615) b!1071774))

(assert (= (and b!1071769 (not c!107615)) b!1071758))

(assert (= (or b!1071774 b!1071758) bm!45219))

(assert (= (or b!1071772 bm!45219) bm!45217))

(assert (= (or b!1071772 b!1071774) bm!45222))

(assert (= (or b!1071773 bm!45217) bm!45221))

(assert (= (or b!1071773 bm!45222) bm!45218))

(assert (= (and d!129263 res!715036) b!1071756))

(assert (= (and d!129263 c!107613) b!1071766))

(assert (= (and d!129263 (not c!107613)) b!1071771))

(assert (= (and d!129263 res!715040) b!1071767))

(assert (= (and b!1071767 res!715038) b!1071757))

(assert (= (and b!1071767 (not res!715041)) b!1071763))

(assert (= (and b!1071763 res!715037) b!1071761))

(assert (= (and b!1071767 res!715042) b!1071759))

(assert (= (and b!1071759 c!107617) b!1071765))

(assert (= (and b!1071759 (not c!107617)) b!1071762))

(assert (= (and b!1071765 res!715044) b!1071768))

(assert (= (or b!1071765 b!1071762) bm!45223))

(assert (= (and b!1071759 res!715043) b!1071755))

(assert (= (and b!1071755 c!107616) b!1071754))

(assert (= (and b!1071755 (not c!107616)) b!1071770))

(assert (= (and b!1071754 res!715039) b!1071764))

(assert (= (or b!1071754 b!1071770) bm!45220))

(declare-fun b_lambda!16707 () Bool)

(assert (=> (not b_lambda!16707) (not b!1071761)))

(declare-fun t!32499 () Bool)

(declare-fun tb!7163 () Bool)

(assert (=> (and start!94812 (= defaultEntry!963 defaultEntry!963) t!32499) tb!7163))

(declare-fun result!14781 () Bool)

(assert (=> tb!7163 (= result!14781 tp_is_empty!25839)))

(assert (=> b!1071761 t!32499))

(declare-fun b_and!34881 () Bool)

(assert (= b_and!34877 (and (=> t!32499 result!14781) b_and!34881)))

(assert (=> b!1071756 m!990507))

(assert (=> b!1071756 m!990507))

(assert (=> b!1071756 m!990509))

(assert (=> d!129263 m!990415))

(assert (=> b!1071763 m!990507))

(assert (=> b!1071763 m!990507))

(declare-fun m!990519 () Bool)

(assert (=> b!1071763 m!990519))

(declare-fun m!990521 () Bool)

(assert (=> b!1071768 m!990521))

(declare-fun m!990523 () Bool)

(assert (=> b!1071764 m!990523))

(declare-fun m!990525 () Bool)

(assert (=> b!1071761 m!990525))

(assert (=> b!1071761 m!990507))

(declare-fun m!990527 () Bool)

(assert (=> b!1071761 m!990527))

(assert (=> b!1071761 m!990525))

(declare-fun m!990529 () Bool)

(assert (=> b!1071761 m!990529))

(declare-fun m!990531 () Bool)

(assert (=> b!1071761 m!990531))

(assert (=> b!1071761 m!990507))

(assert (=> b!1071761 m!990529))

(declare-fun m!990533 () Bool)

(assert (=> bm!45220 m!990533))

(declare-fun m!990535 () Bool)

(assert (=> bm!45223 m!990535))

(assert (=> b!1071757 m!990507))

(assert (=> b!1071757 m!990507))

(assert (=> b!1071757 m!990509))

(declare-fun m!990537 () Bool)

(assert (=> bm!45218 m!990537))

(declare-fun m!990539 () Bool)

(assert (=> b!1071766 m!990539))

(declare-fun m!990541 () Bool)

(assert (=> b!1071766 m!990541))

(declare-fun m!990543 () Bool)

(assert (=> b!1071766 m!990543))

(declare-fun m!990545 () Bool)

(assert (=> b!1071766 m!990545))

(assert (=> b!1071766 m!990545))

(declare-fun m!990547 () Bool)

(assert (=> b!1071766 m!990547))

(declare-fun m!990549 () Bool)

(assert (=> b!1071766 m!990549))

(declare-fun m!990551 () Bool)

(assert (=> b!1071766 m!990551))

(declare-fun m!990553 () Bool)

(assert (=> b!1071766 m!990553))

(assert (=> b!1071766 m!990553))

(declare-fun m!990555 () Bool)

(assert (=> b!1071766 m!990555))

(declare-fun m!990557 () Bool)

(assert (=> b!1071766 m!990557))

(declare-fun m!990559 () Bool)

(assert (=> b!1071766 m!990559))

(declare-fun m!990561 () Bool)

(assert (=> b!1071766 m!990561))

(assert (=> b!1071766 m!990425))

(assert (=> b!1071766 m!990557))

(declare-fun m!990563 () Bool)

(assert (=> b!1071766 m!990563))

(assert (=> b!1071766 m!990539))

(declare-fun m!990565 () Bool)

(assert (=> b!1071766 m!990565))

(declare-fun m!990567 () Bool)

(assert (=> b!1071766 m!990567))

(assert (=> b!1071766 m!990507))

(assert (=> bm!45221 m!990425))

(declare-fun m!990569 () Bool)

(assert (=> b!1071773 m!990569))

(assert (=> b!1071651 d!129263))

(declare-fun d!129265 () Bool)

(declare-fun e!612110 () Bool)

(assert (=> d!129265 e!612110))

(declare-fun res!715049 () Bool)

(assert (=> d!129265 (=> (not res!715049) (not e!612110))))

(assert (=> d!129265 (= res!715049 (or (bvsge #b00000000000000000000000000000000 (size!33533 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))))

(declare-fun lt!474566 () ListLongMap!14553)

(declare-fun lt!474564 () ListLongMap!14553)

(assert (=> d!129265 (= lt!474566 lt!474564)))

(declare-fun lt!474568 () Unit!35245)

(declare-fun e!612102 () Unit!35245)

(assert (=> d!129265 (= lt!474568 e!612102)))

(declare-fun c!107619 () Bool)

(declare-fun e!612109 () Bool)

(assert (=> d!129265 (= c!107619 e!612109)))

(declare-fun res!715045 () Bool)

(assert (=> d!129265 (=> (not res!715045) (not e!612109))))

(assert (=> d!129265 (= res!715045 (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(declare-fun e!612100 () ListLongMap!14553)

(assert (=> d!129265 (= lt!474564 e!612100)))

(declare-fun c!107620 () Bool)

(assert (=> d!129265 (= c!107620 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129265 (validMask!0 mask!1515)))

(assert (=> d!129265 (= (getCurrentListMap!4156 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!474566)))

(declare-fun bm!45224 () Bool)

(declare-fun call!45227 () ListLongMap!14553)

(declare-fun call!45232 () ListLongMap!14553)

(assert (=> bm!45224 (= call!45227 call!45232)))

(declare-fun b!1071777 () Bool)

(declare-fun e!612104 () Bool)

(declare-fun e!612098 () Bool)

(assert (=> b!1071777 (= e!612104 e!612098)))

(declare-fun res!715048 () Bool)

(declare-fun call!45228 () Bool)

(assert (=> b!1071777 (= res!715048 call!45228)))

(assert (=> b!1071777 (=> (not res!715048) (not e!612098))))

(declare-fun b!1071778 () Bool)

(assert (=> b!1071778 (= e!612110 e!612104)))

(declare-fun c!107622 () Bool)

(assert (=> b!1071778 (= c!107622 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1071779 () Bool)

(assert (=> b!1071779 (= e!612109 (validKeyInArray!0 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1071780 () Bool)

(declare-fun e!612107 () Bool)

(assert (=> b!1071780 (= e!612107 (validKeyInArray!0 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1071781 () Bool)

(declare-fun e!612099 () ListLongMap!14553)

(declare-fun call!45231 () ListLongMap!14553)

(assert (=> b!1071781 (= e!612099 call!45231)))

(declare-fun b!1071782 () Bool)

(declare-fun res!715052 () Bool)

(assert (=> b!1071782 (=> (not res!715052) (not e!612110))))

(declare-fun e!612106 () Bool)

(assert (=> b!1071782 (= res!715052 e!612106)))

(declare-fun c!107623 () Bool)

(assert (=> b!1071782 (= c!107623 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1071783 () Bool)

(declare-fun e!612103 () ListLongMap!14553)

(assert (=> b!1071783 (= e!612100 e!612103)))

(declare-fun c!107624 () Bool)

(assert (=> b!1071783 (= c!107624 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!612105 () Bool)

(declare-fun b!1071784 () Bool)

(assert (=> b!1071784 (= e!612105 (= (apply!965 lt!474566 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)) (get!17179 (select (arr!32995 _values!955) #b00000000000000000000000000000000) (dynLambda!2041 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1071784 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33532 _values!955)))))

(assert (=> b!1071784 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(declare-fun b!1071785 () Bool)

(declare-fun call!45229 () Bool)

(assert (=> b!1071785 (= e!612106 (not call!45229))))

(declare-fun bm!45225 () Bool)

(declare-fun call!45230 () ListLongMap!14553)

(assert (=> bm!45225 (= call!45230 (+!3148 (ite c!107620 call!45232 (ite c!107624 call!45227 call!45231)) (ite (or c!107620 c!107624) (tuple2!16573 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16573 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1071786 () Bool)

(declare-fun e!612108 () Bool)

(assert (=> b!1071786 (= e!612108 e!612105)))

(declare-fun res!715046 () Bool)

(assert (=> b!1071786 (=> (not res!715046) (not e!612105))))

(assert (=> b!1071786 (= res!715046 (contains!6334 lt!474566 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1071786 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(declare-fun b!1071787 () Bool)

(assert (=> b!1071787 (= e!612098 (= (apply!965 lt!474566 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun bm!45226 () Bool)

(assert (=> bm!45226 (= call!45231 call!45227)))

(declare-fun b!1071788 () Bool)

(declare-fun e!612101 () Bool)

(assert (=> b!1071788 (= e!612106 e!612101)))

(declare-fun res!715053 () Bool)

(assert (=> b!1071788 (= res!715053 call!45229)))

(assert (=> b!1071788 (=> (not res!715053) (not e!612101))))

(declare-fun b!1071789 () Bool)

(declare-fun lt!474563 () Unit!35245)

(assert (=> b!1071789 (= e!612102 lt!474563)))

(declare-fun lt!474561 () ListLongMap!14553)

(assert (=> b!1071789 (= lt!474561 (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!474567 () (_ BitVec 64))

(assert (=> b!1071789 (= lt!474567 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!474557 () (_ BitVec 64))

(assert (=> b!1071789 (= lt!474557 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!474570 () Unit!35245)

(assert (=> b!1071789 (= lt!474570 (addStillContains!648 lt!474561 lt!474567 zeroValueBefore!47 lt!474557))))

(assert (=> b!1071789 (contains!6334 (+!3148 lt!474561 (tuple2!16573 lt!474567 zeroValueBefore!47)) lt!474557)))

(declare-fun lt!474562 () Unit!35245)

(assert (=> b!1071789 (= lt!474562 lt!474570)))

(declare-fun lt!474555 () ListLongMap!14553)

(assert (=> b!1071789 (= lt!474555 (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!474565 () (_ BitVec 64))

(assert (=> b!1071789 (= lt!474565 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!474551 () (_ BitVec 64))

(assert (=> b!1071789 (= lt!474551 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!474559 () Unit!35245)

(assert (=> b!1071789 (= lt!474559 (addApplyDifferent!500 lt!474555 lt!474565 minValue!907 lt!474551))))

(assert (=> b!1071789 (= (apply!965 (+!3148 lt!474555 (tuple2!16573 lt!474565 minValue!907)) lt!474551) (apply!965 lt!474555 lt!474551))))

(declare-fun lt!474560 () Unit!35245)

(assert (=> b!1071789 (= lt!474560 lt!474559)))

(declare-fun lt!474571 () ListLongMap!14553)

(assert (=> b!1071789 (= lt!474571 (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!474553 () (_ BitVec 64))

(assert (=> b!1071789 (= lt!474553 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!474569 () (_ BitVec 64))

(assert (=> b!1071789 (= lt!474569 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!474556 () Unit!35245)

(assert (=> b!1071789 (= lt!474556 (addApplyDifferent!500 lt!474571 lt!474553 zeroValueBefore!47 lt!474569))))

(assert (=> b!1071789 (= (apply!965 (+!3148 lt!474571 (tuple2!16573 lt!474553 zeroValueBefore!47)) lt!474569) (apply!965 lt!474571 lt!474569))))

(declare-fun lt!474552 () Unit!35245)

(assert (=> b!1071789 (= lt!474552 lt!474556)))

(declare-fun lt!474558 () ListLongMap!14553)

(assert (=> b!1071789 (= lt!474558 (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!474550 () (_ BitVec 64))

(assert (=> b!1071789 (= lt!474550 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!474554 () (_ BitVec 64))

(assert (=> b!1071789 (= lt!474554 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1071789 (= lt!474563 (addApplyDifferent!500 lt!474558 lt!474550 minValue!907 lt!474554))))

(assert (=> b!1071789 (= (apply!965 (+!3148 lt!474558 (tuple2!16573 lt!474550 minValue!907)) lt!474554) (apply!965 lt!474558 lt!474554))))

(declare-fun bm!45227 () Bool)

(assert (=> bm!45227 (= call!45228 (contains!6334 lt!474566 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1071790 () Bool)

(declare-fun res!715051 () Bool)

(assert (=> b!1071790 (=> (not res!715051) (not e!612110))))

(assert (=> b!1071790 (= res!715051 e!612108)))

(declare-fun res!715050 () Bool)

(assert (=> b!1071790 (=> res!715050 e!612108)))

(assert (=> b!1071790 (= res!715050 (not e!612107))))

(declare-fun res!715047 () Bool)

(assert (=> b!1071790 (=> (not res!715047) (not e!612107))))

(assert (=> b!1071790 (= res!715047 (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(declare-fun b!1071791 () Bool)

(assert (=> b!1071791 (= e!612101 (= (apply!965 lt!474566 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun b!1071792 () Bool)

(declare-fun c!107621 () Bool)

(assert (=> b!1071792 (= c!107621 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1071792 (= e!612103 e!612099)))

(declare-fun b!1071793 () Bool)

(assert (=> b!1071793 (= e!612104 (not call!45228))))

(declare-fun b!1071794 () Bool)

(declare-fun Unit!35250 () Unit!35245)

(assert (=> b!1071794 (= e!612102 Unit!35250)))

(declare-fun b!1071795 () Bool)

(declare-fun call!45233 () ListLongMap!14553)

(assert (=> b!1071795 (= e!612103 call!45233)))

(declare-fun b!1071796 () Bool)

(assert (=> b!1071796 (= e!612100 (+!3148 call!45230 (tuple2!16573 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun bm!45228 () Bool)

(assert (=> bm!45228 (= call!45232 (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071797 () Bool)

(assert (=> b!1071797 (= e!612099 call!45233)))

(declare-fun bm!45229 () Bool)

(assert (=> bm!45229 (= call!45233 call!45230)))

(declare-fun bm!45230 () Bool)

(assert (=> bm!45230 (= call!45229 (contains!6334 lt!474566 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!129265 c!107620) b!1071796))

(assert (= (and d!129265 (not c!107620)) b!1071783))

(assert (= (and b!1071783 c!107624) b!1071795))

(assert (= (and b!1071783 (not c!107624)) b!1071792))

(assert (= (and b!1071792 c!107621) b!1071797))

(assert (= (and b!1071792 (not c!107621)) b!1071781))

(assert (= (or b!1071797 b!1071781) bm!45226))

(assert (= (or b!1071795 bm!45226) bm!45224))

(assert (= (or b!1071795 b!1071797) bm!45229))

(assert (= (or b!1071796 bm!45224) bm!45228))

(assert (= (or b!1071796 bm!45229) bm!45225))

(assert (= (and d!129265 res!715045) b!1071779))

(assert (= (and d!129265 c!107619) b!1071789))

(assert (= (and d!129265 (not c!107619)) b!1071794))

(assert (= (and d!129265 res!715049) b!1071790))

(assert (= (and b!1071790 res!715047) b!1071780))

(assert (= (and b!1071790 (not res!715050)) b!1071786))

(assert (= (and b!1071786 res!715046) b!1071784))

(assert (= (and b!1071790 res!715051) b!1071782))

(assert (= (and b!1071782 c!107623) b!1071788))

(assert (= (and b!1071782 (not c!107623)) b!1071785))

(assert (= (and b!1071788 res!715053) b!1071791))

(assert (= (or b!1071788 b!1071785) bm!45230))

(assert (= (and b!1071782 res!715052) b!1071778))

(assert (= (and b!1071778 c!107622) b!1071777))

(assert (= (and b!1071778 (not c!107622)) b!1071793))

(assert (= (and b!1071777 res!715048) b!1071787))

(assert (= (or b!1071777 b!1071793) bm!45227))

(declare-fun b_lambda!16709 () Bool)

(assert (=> (not b_lambda!16709) (not b!1071784)))

(assert (=> b!1071784 t!32499))

(declare-fun b_and!34883 () Bool)

(assert (= b_and!34881 (and (=> t!32499 result!14781) b_and!34883)))

(assert (=> b!1071779 m!990507))

(assert (=> b!1071779 m!990507))

(assert (=> b!1071779 m!990509))

(assert (=> d!129265 m!990415))

(assert (=> b!1071786 m!990507))

(assert (=> b!1071786 m!990507))

(declare-fun m!990571 () Bool)

(assert (=> b!1071786 m!990571))

(declare-fun m!990573 () Bool)

(assert (=> b!1071791 m!990573))

(declare-fun m!990575 () Bool)

(assert (=> b!1071787 m!990575))

(assert (=> b!1071784 m!990525))

(assert (=> b!1071784 m!990507))

(declare-fun m!990577 () Bool)

(assert (=> b!1071784 m!990577))

(assert (=> b!1071784 m!990525))

(assert (=> b!1071784 m!990529))

(assert (=> b!1071784 m!990531))

(assert (=> b!1071784 m!990507))

(assert (=> b!1071784 m!990529))

(declare-fun m!990579 () Bool)

(assert (=> bm!45227 m!990579))

(declare-fun m!990581 () Bool)

(assert (=> bm!45230 m!990581))

(assert (=> b!1071780 m!990507))

(assert (=> b!1071780 m!990507))

(assert (=> b!1071780 m!990509))

(declare-fun m!990583 () Bool)

(assert (=> bm!45225 m!990583))

(declare-fun m!990585 () Bool)

(assert (=> b!1071789 m!990585))

(declare-fun m!990587 () Bool)

(assert (=> b!1071789 m!990587))

(declare-fun m!990589 () Bool)

(assert (=> b!1071789 m!990589))

(declare-fun m!990591 () Bool)

(assert (=> b!1071789 m!990591))

(assert (=> b!1071789 m!990591))

(declare-fun m!990593 () Bool)

(assert (=> b!1071789 m!990593))

(declare-fun m!990595 () Bool)

(assert (=> b!1071789 m!990595))

(declare-fun m!990597 () Bool)

(assert (=> b!1071789 m!990597))

(declare-fun m!990599 () Bool)

(assert (=> b!1071789 m!990599))

(assert (=> b!1071789 m!990599))

(declare-fun m!990601 () Bool)

(assert (=> b!1071789 m!990601))

(declare-fun m!990603 () Bool)

(assert (=> b!1071789 m!990603))

(declare-fun m!990605 () Bool)

(assert (=> b!1071789 m!990605))

(declare-fun m!990607 () Bool)

(assert (=> b!1071789 m!990607))

(assert (=> b!1071789 m!990427))

(assert (=> b!1071789 m!990603))

(declare-fun m!990609 () Bool)

(assert (=> b!1071789 m!990609))

(assert (=> b!1071789 m!990585))

(declare-fun m!990611 () Bool)

(assert (=> b!1071789 m!990611))

(declare-fun m!990613 () Bool)

(assert (=> b!1071789 m!990613))

(assert (=> b!1071789 m!990507))

(assert (=> bm!45228 m!990427))

(declare-fun m!990615 () Bool)

(assert (=> b!1071796 m!990615))

(assert (=> b!1071651 d!129265))

(declare-fun d!129267 () Bool)

(declare-fun e!612111 () Bool)

(assert (=> d!129267 e!612111))

(declare-fun res!715055 () Bool)

(assert (=> d!129267 (=> (not res!715055) (not e!612111))))

(declare-fun lt!474575 () ListLongMap!14553)

(assert (=> d!129267 (= res!715055 (contains!6334 lt!474575 (_1!8296 lt!474424)))))

(declare-fun lt!474574 () List!23154)

(assert (=> d!129267 (= lt!474575 (ListLongMap!14554 lt!474574))))

(declare-fun lt!474572 () Unit!35245)

(declare-fun lt!474573 () Unit!35245)

(assert (=> d!129267 (= lt!474572 lt!474573)))

(assert (=> d!129267 (= (getValueByKey!606 lt!474574 (_1!8296 lt!474424)) (Some!656 (_2!8296 lt!474424)))))

(assert (=> d!129267 (= lt!474573 (lemmaContainsTupThenGetReturnValue!285 lt!474574 (_1!8296 lt!474424) (_2!8296 lt!474424)))))

(assert (=> d!129267 (= lt!474574 (insertStrictlySorted!377 (toList!7292 (+!3148 lt!474432 lt!474423)) (_1!8296 lt!474424) (_2!8296 lt!474424)))))

(assert (=> d!129267 (= (+!3148 (+!3148 lt!474432 lt!474423) lt!474424) lt!474575)))

(declare-fun b!1071798 () Bool)

(declare-fun res!715054 () Bool)

(assert (=> b!1071798 (=> (not res!715054) (not e!612111))))

(assert (=> b!1071798 (= res!715054 (= (getValueByKey!606 (toList!7292 lt!474575) (_1!8296 lt!474424)) (Some!656 (_2!8296 lt!474424))))))

(declare-fun b!1071799 () Bool)

(assert (=> b!1071799 (= e!612111 (contains!6335 (toList!7292 lt!474575) lt!474424))))

(assert (= (and d!129267 res!715055) b!1071798))

(assert (= (and b!1071798 res!715054) b!1071799))

(declare-fun m!990617 () Bool)

(assert (=> d!129267 m!990617))

(declare-fun m!990619 () Bool)

(assert (=> d!129267 m!990619))

(declare-fun m!990621 () Bool)

(assert (=> d!129267 m!990621))

(declare-fun m!990623 () Bool)

(assert (=> d!129267 m!990623))

(declare-fun m!990625 () Bool)

(assert (=> b!1071798 m!990625))

(declare-fun m!990627 () Bool)

(assert (=> b!1071799 m!990627))

(assert (=> b!1071651 d!129267))

(declare-fun d!129269 () Bool)

(declare-fun lt!474576 () ListLongMap!14553)

(assert (=> d!129269 (not (contains!6334 lt!474576 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129269 (= lt!474576 (ListLongMap!14554 (removeStrictlySorted!74 (toList!7292 lt!474428) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129269 (= (-!684 lt!474428 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474576)))

(declare-fun bs!31572 () Bool)

(assert (= bs!31572 d!129269))

(declare-fun m!990629 () Bool)

(assert (=> bs!31572 m!990629))

(declare-fun m!990631 () Bool)

(assert (=> bs!31572 m!990631))

(assert (=> b!1071651 d!129269))

(declare-fun d!129271 () Bool)

(assert (=> d!129271 (= (-!684 (+!3148 lt!474425 (tuple2!16573 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) #b0000000000000000000000000000000000000000000000000000000000000000) lt!474425)))

(declare-fun lt!474579 () Unit!35245)

(declare-fun choose!1747 (ListLongMap!14553 (_ BitVec 64) V!39587) Unit!35245)

(assert (=> d!129271 (= lt!474579 (choose!1747 lt!474425 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> d!129271 (not (contains!6334 lt!474425 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129271 (= (addThenRemoveForNewKeyIsSame!58 lt!474425 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) lt!474579)))

(declare-fun bs!31573 () Bool)

(assert (= bs!31573 d!129271))

(declare-fun m!990633 () Bool)

(assert (=> bs!31573 m!990633))

(assert (=> bs!31573 m!990633))

(declare-fun m!990635 () Bool)

(assert (=> bs!31573 m!990635))

(declare-fun m!990637 () Bool)

(assert (=> bs!31573 m!990637))

(declare-fun m!990639 () Bool)

(assert (=> bs!31573 m!990639))

(assert (=> b!1071651 d!129271))

(declare-fun d!129273 () Bool)

(declare-fun e!612112 () Bool)

(assert (=> d!129273 e!612112))

(declare-fun res!715057 () Bool)

(assert (=> d!129273 (=> (not res!715057) (not e!612112))))

(declare-fun lt!474583 () ListLongMap!14553)

(assert (=> d!129273 (= res!715057 (contains!6334 lt!474583 (_1!8296 lt!474424)))))

(declare-fun lt!474582 () List!23154)

(assert (=> d!129273 (= lt!474583 (ListLongMap!14554 lt!474582))))

(declare-fun lt!474580 () Unit!35245)

(declare-fun lt!474581 () Unit!35245)

(assert (=> d!129273 (= lt!474580 lt!474581)))

(assert (=> d!129273 (= (getValueByKey!606 lt!474582 (_1!8296 lt!474424)) (Some!656 (_2!8296 lt!474424)))))

(assert (=> d!129273 (= lt!474581 (lemmaContainsTupThenGetReturnValue!285 lt!474582 (_1!8296 lt!474424) (_2!8296 lt!474424)))))

(assert (=> d!129273 (= lt!474582 (insertStrictlySorted!377 (toList!7292 lt!474432) (_1!8296 lt!474424) (_2!8296 lt!474424)))))

(assert (=> d!129273 (= (+!3148 lt!474432 lt!474424) lt!474583)))

(declare-fun b!1071800 () Bool)

(declare-fun res!715056 () Bool)

(assert (=> b!1071800 (=> (not res!715056) (not e!612112))))

(assert (=> b!1071800 (= res!715056 (= (getValueByKey!606 (toList!7292 lt!474583) (_1!8296 lt!474424)) (Some!656 (_2!8296 lt!474424))))))

(declare-fun b!1071801 () Bool)

(assert (=> b!1071801 (= e!612112 (contains!6335 (toList!7292 lt!474583) lt!474424))))

(assert (= (and d!129273 res!715057) b!1071800))

(assert (= (and b!1071800 res!715056) b!1071801))

(declare-fun m!990641 () Bool)

(assert (=> d!129273 m!990641))

(declare-fun m!990643 () Bool)

(assert (=> d!129273 m!990643))

(declare-fun m!990645 () Bool)

(assert (=> d!129273 m!990645))

(declare-fun m!990647 () Bool)

(assert (=> d!129273 m!990647))

(declare-fun m!990649 () Bool)

(assert (=> b!1071800 m!990649))

(declare-fun m!990651 () Bool)

(assert (=> b!1071801 m!990651))

(assert (=> b!1071651 d!129273))

(declare-fun d!129275 () Bool)

(declare-fun e!612113 () Bool)

(assert (=> d!129275 e!612113))

(declare-fun res!715059 () Bool)

(assert (=> d!129275 (=> (not res!715059) (not e!612113))))

(declare-fun lt!474587 () ListLongMap!14553)

(assert (=> d!129275 (= res!715059 (contains!6334 lt!474587 (_1!8296 lt!474423)))))

(declare-fun lt!474586 () List!23154)

(assert (=> d!129275 (= lt!474587 (ListLongMap!14554 lt!474586))))

(declare-fun lt!474584 () Unit!35245)

(declare-fun lt!474585 () Unit!35245)

(assert (=> d!129275 (= lt!474584 lt!474585)))

(assert (=> d!129275 (= (getValueByKey!606 lt!474586 (_1!8296 lt!474423)) (Some!656 (_2!8296 lt!474423)))))

(assert (=> d!129275 (= lt!474585 (lemmaContainsTupThenGetReturnValue!285 lt!474586 (_1!8296 lt!474423) (_2!8296 lt!474423)))))

(assert (=> d!129275 (= lt!474586 (insertStrictlySorted!377 (toList!7292 lt!474425) (_1!8296 lt!474423) (_2!8296 lt!474423)))))

(assert (=> d!129275 (= (+!3148 lt!474425 lt!474423) lt!474587)))

(declare-fun b!1071802 () Bool)

(declare-fun res!715058 () Bool)

(assert (=> b!1071802 (=> (not res!715058) (not e!612113))))

(assert (=> b!1071802 (= res!715058 (= (getValueByKey!606 (toList!7292 lt!474587) (_1!8296 lt!474423)) (Some!656 (_2!8296 lt!474423))))))

(declare-fun b!1071803 () Bool)

(assert (=> b!1071803 (= e!612113 (contains!6335 (toList!7292 lt!474587) lt!474423))))

(assert (= (and d!129275 res!715059) b!1071802))

(assert (= (and b!1071802 res!715058) b!1071803))

(declare-fun m!990653 () Bool)

(assert (=> d!129275 m!990653))

(declare-fun m!990655 () Bool)

(assert (=> d!129275 m!990655))

(declare-fun m!990657 () Bool)

(assert (=> d!129275 m!990657))

(declare-fun m!990659 () Bool)

(assert (=> d!129275 m!990659))

(declare-fun m!990661 () Bool)

(assert (=> b!1071802 m!990661))

(declare-fun m!990663 () Bool)

(assert (=> b!1071803 m!990663))

(assert (=> b!1071651 d!129275))

(declare-fun d!129277 () Bool)

(assert (=> d!129277 (= (+!3148 (+!3148 lt!474432 (tuple2!16573 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (tuple2!16573 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)) (+!3148 (+!3148 lt!474432 (tuple2!16573 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)) (tuple2!16573 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun lt!474590 () Unit!35245)

(declare-fun choose!1748 (ListLongMap!14553 (_ BitVec 64) V!39587 (_ BitVec 64) V!39587) Unit!35245)

(assert (=> d!129277 (= lt!474590 (choose!1748 lt!474432 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> d!129277 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129277 (= (addCommutativeForDiffKeys!728 lt!474432 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907) lt!474590)))

(declare-fun bs!31574 () Bool)

(assert (= bs!31574 d!129277))

(declare-fun m!990665 () Bool)

(assert (=> bs!31574 m!990665))

(declare-fun m!990667 () Bool)

(assert (=> bs!31574 m!990667))

(declare-fun m!990669 () Bool)

(assert (=> bs!31574 m!990669))

(declare-fun m!990671 () Bool)

(assert (=> bs!31574 m!990671))

(assert (=> bs!31574 m!990669))

(assert (=> bs!31574 m!990665))

(declare-fun m!990673 () Bool)

(assert (=> bs!31574 m!990673))

(assert (=> b!1071651 d!129277))

(declare-fun d!129279 () Bool)

(declare-fun e!612114 () Bool)

(assert (=> d!129279 e!612114))

(declare-fun res!715061 () Bool)

(assert (=> d!129279 (=> (not res!715061) (not e!612114))))

(declare-fun lt!474594 () ListLongMap!14553)

(assert (=> d!129279 (= res!715061 (contains!6334 lt!474594 (_1!8296 lt!474423)))))

(declare-fun lt!474593 () List!23154)

(assert (=> d!129279 (= lt!474594 (ListLongMap!14554 lt!474593))))

(declare-fun lt!474591 () Unit!35245)

(declare-fun lt!474592 () Unit!35245)

(assert (=> d!129279 (= lt!474591 lt!474592)))

(assert (=> d!129279 (= (getValueByKey!606 lt!474593 (_1!8296 lt!474423)) (Some!656 (_2!8296 lt!474423)))))

(assert (=> d!129279 (= lt!474592 (lemmaContainsTupThenGetReturnValue!285 lt!474593 (_1!8296 lt!474423) (_2!8296 lt!474423)))))

(assert (=> d!129279 (= lt!474593 (insertStrictlySorted!377 (toList!7292 lt!474432) (_1!8296 lt!474423) (_2!8296 lt!474423)))))

(assert (=> d!129279 (= (+!3148 lt!474432 lt!474423) lt!474594)))

(declare-fun b!1071804 () Bool)

(declare-fun res!715060 () Bool)

(assert (=> b!1071804 (=> (not res!715060) (not e!612114))))

(assert (=> b!1071804 (= res!715060 (= (getValueByKey!606 (toList!7292 lt!474594) (_1!8296 lt!474423)) (Some!656 (_2!8296 lt!474423))))))

(declare-fun b!1071805 () Bool)

(assert (=> b!1071805 (= e!612114 (contains!6335 (toList!7292 lt!474594) lt!474423))))

(assert (= (and d!129279 res!715061) b!1071804))

(assert (= (and b!1071804 res!715060) b!1071805))

(declare-fun m!990675 () Bool)

(assert (=> d!129279 m!990675))

(declare-fun m!990677 () Bool)

(assert (=> d!129279 m!990677))

(declare-fun m!990679 () Bool)

(assert (=> d!129279 m!990679))

(declare-fun m!990681 () Bool)

(assert (=> d!129279 m!990681))

(declare-fun m!990683 () Bool)

(assert (=> b!1071804 m!990683))

(declare-fun m!990685 () Bool)

(assert (=> b!1071805 m!990685))

(assert (=> b!1071651 d!129279))

(declare-fun d!129281 () Bool)

(assert (=> d!129281 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!94812 d!129281))

(declare-fun d!129283 () Bool)

(assert (=> d!129283 (= (array_inv!25366 _values!955) (bvsge (size!33532 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!94812 d!129283))

(declare-fun d!129285 () Bool)

(assert (=> d!129285 (= (array_inv!25367 _keys!1163) (bvsge (size!33533 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!94812 d!129285))

(declare-fun b!1071814 () Bool)

(declare-fun e!612123 () Bool)

(declare-fun call!45236 () Bool)

(assert (=> b!1071814 (= e!612123 call!45236)))

(declare-fun d!129287 () Bool)

(declare-fun res!715066 () Bool)

(declare-fun e!612122 () Bool)

(assert (=> d!129287 (=> res!715066 e!612122)))

(assert (=> d!129287 (= res!715066 (bvsge #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(assert (=> d!129287 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!612122)))

(declare-fun b!1071815 () Bool)

(declare-fun e!612121 () Bool)

(assert (=> b!1071815 (= e!612121 call!45236)))

(declare-fun b!1071816 () Bool)

(assert (=> b!1071816 (= e!612123 e!612121)))

(declare-fun lt!474602 () (_ BitVec 64))

(assert (=> b!1071816 (= lt!474602 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!474603 () Unit!35245)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68608 (_ BitVec 64) (_ BitVec 32)) Unit!35245)

(assert (=> b!1071816 (= lt!474603 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!474602 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68608 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1071816 (arrayContainsKey!0 _keys!1163 lt!474602 #b00000000000000000000000000000000)))

(declare-fun lt!474601 () Unit!35245)

(assert (=> b!1071816 (= lt!474601 lt!474603)))

(declare-fun res!715067 () Bool)

(declare-datatypes ((SeekEntryResult!9880 0))(
  ( (MissingZero!9880 (index!41890 (_ BitVec 32))) (Found!9880 (index!41891 (_ BitVec 32))) (Intermediate!9880 (undefined!10692 Bool) (index!41892 (_ BitVec 32)) (x!96026 (_ BitVec 32))) (Undefined!9880) (MissingVacant!9880 (index!41893 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68608 (_ BitVec 32)) SeekEntryResult!9880)

(assert (=> b!1071816 (= res!715067 (= (seekEntryOrOpen!0 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9880 #b00000000000000000000000000000000)))))

(assert (=> b!1071816 (=> (not res!715067) (not e!612121))))

(declare-fun bm!45233 () Bool)

(assert (=> bm!45233 (= call!45236 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1071817 () Bool)

(assert (=> b!1071817 (= e!612122 e!612123)))

(declare-fun c!107627 () Bool)

(assert (=> b!1071817 (= c!107627 (validKeyInArray!0 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!129287 (not res!715066)) b!1071817))

(assert (= (and b!1071817 c!107627) b!1071816))

(assert (= (and b!1071817 (not c!107627)) b!1071814))

(assert (= (and b!1071816 res!715067) b!1071815))

(assert (= (or b!1071815 b!1071814) bm!45233))

(assert (=> b!1071816 m!990507))

(declare-fun m!990687 () Bool)

(assert (=> b!1071816 m!990687))

(declare-fun m!990689 () Bool)

(assert (=> b!1071816 m!990689))

(assert (=> b!1071816 m!990507))

(declare-fun m!990691 () Bool)

(assert (=> b!1071816 m!990691))

(declare-fun m!990693 () Bool)

(assert (=> bm!45233 m!990693))

(assert (=> b!1071817 m!990507))

(assert (=> b!1071817 m!990507))

(assert (=> b!1071817 m!990509))

(assert (=> b!1071655 d!129287))

(declare-fun d!129289 () Bool)

(assert (=> d!129289 (= (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!474606 () Unit!35245)

(declare-fun choose!1749 (array!68608 array!68606 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39587 V!39587 V!39587 V!39587 (_ BitVec 32) Int) Unit!35245)

(assert (=> d!129289 (= lt!474606 (choose!1749 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129289 (validMask!0 mask!1515)))

(assert (=> d!129289 (= (lemmaNoChangeToArrayThenSameMapNoExtras!863 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!474606)))

(declare-fun bs!31575 () Bool)

(assert (= bs!31575 d!129289))

(assert (=> bs!31575 m!990427))

(assert (=> bs!31575 m!990425))

(declare-fun m!990695 () Bool)

(assert (=> bs!31575 m!990695))

(assert (=> bs!31575 m!990415))

(assert (=> b!1071654 d!129289))

(declare-fun b!1071842 () Bool)

(declare-fun lt!474622 () Unit!35245)

(declare-fun lt!474625 () Unit!35245)

(assert (=> b!1071842 (= lt!474622 lt!474625)))

(declare-fun lt!474624 () (_ BitVec 64))

(declare-fun lt!474627 () ListLongMap!14553)

(declare-fun lt!474623 () V!39587)

(declare-fun lt!474626 () (_ BitVec 64))

(assert (=> b!1071842 (not (contains!6334 (+!3148 lt!474627 (tuple2!16573 lt!474626 lt!474623)) lt!474624))))

(declare-fun addStillNotContains!260 (ListLongMap!14553 (_ BitVec 64) V!39587 (_ BitVec 64)) Unit!35245)

(assert (=> b!1071842 (= lt!474625 (addStillNotContains!260 lt!474627 lt!474626 lt!474623 lt!474624))))

(assert (=> b!1071842 (= lt!474624 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1071842 (= lt!474623 (get!17179 (select (arr!32995 _values!955) #b00000000000000000000000000000000) (dynLambda!2041 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1071842 (= lt!474626 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun call!45239 () ListLongMap!14553)

(assert (=> b!1071842 (= lt!474627 call!45239)))

(declare-fun e!612140 () ListLongMap!14553)

(assert (=> b!1071842 (= e!612140 (+!3148 call!45239 (tuple2!16573 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000) (get!17179 (select (arr!32995 _values!955) #b00000000000000000000000000000000) (dynLambda!2041 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1071843 () Bool)

(declare-fun e!612141 () Bool)

(assert (=> b!1071843 (= e!612141 (validKeyInArray!0 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1071843 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!45236 () Bool)

(assert (=> bm!45236 (= call!45239 (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1071844 () Bool)

(declare-fun e!612138 () ListLongMap!14553)

(assert (=> b!1071844 (= e!612138 e!612140)))

(declare-fun c!107636 () Bool)

(assert (=> b!1071844 (= c!107636 (validKeyInArray!0 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1071845 () Bool)

(declare-fun e!612144 () Bool)

(declare-fun lt!474621 () ListLongMap!14553)

(declare-fun isEmpty!951 (ListLongMap!14553) Bool)

(assert (=> b!1071845 (= e!612144 (isEmpty!951 lt!474621))))

(declare-fun b!1071846 () Bool)

(declare-fun res!715076 () Bool)

(declare-fun e!612142 () Bool)

(assert (=> b!1071846 (=> (not res!715076) (not e!612142))))

(assert (=> b!1071846 (= res!715076 (not (contains!6334 lt!474621 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1071847 () Bool)

(assert (=> b!1071847 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(assert (=> b!1071847 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33532 _values!955)))))

(declare-fun e!612143 () Bool)

(assert (=> b!1071847 (= e!612143 (= (apply!965 lt!474621 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)) (get!17179 (select (arr!32995 _values!955) #b00000000000000000000000000000000) (dynLambda!2041 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1071848 () Bool)

(declare-fun e!612139 () Bool)

(assert (=> b!1071848 (= e!612139 e!612144)))

(declare-fun c!107637 () Bool)

(assert (=> b!1071848 (= c!107637 (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(declare-fun b!1071849 () Bool)

(assert (=> b!1071849 (= e!612140 call!45239)))

(declare-fun d!129291 () Bool)

(assert (=> d!129291 e!612142))

(declare-fun res!715079 () Bool)

(assert (=> d!129291 (=> (not res!715079) (not e!612142))))

(assert (=> d!129291 (= res!715079 (not (contains!6334 lt!474621 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129291 (= lt!474621 e!612138)))

(declare-fun c!107638 () Bool)

(assert (=> d!129291 (= c!107638 (bvsge #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(assert (=> d!129291 (validMask!0 mask!1515)))

(assert (=> d!129291 (= (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!474621)))

(declare-fun b!1071850 () Bool)

(assert (=> b!1071850 (= e!612142 e!612139)))

(declare-fun c!107639 () Bool)

(assert (=> b!1071850 (= c!107639 e!612141)))

(declare-fun res!715077 () Bool)

(assert (=> b!1071850 (=> (not res!715077) (not e!612141))))

(assert (=> b!1071850 (= res!715077 (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(declare-fun b!1071851 () Bool)

(assert (=> b!1071851 (= e!612138 (ListLongMap!14554 Nil!23151))))

(declare-fun b!1071852 () Bool)

(assert (=> b!1071852 (= e!612144 (= lt!474621 (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1071853 () Bool)

(assert (=> b!1071853 (= e!612139 e!612143)))

(assert (=> b!1071853 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(declare-fun res!715078 () Bool)

(assert (=> b!1071853 (= res!715078 (contains!6334 lt!474621 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1071853 (=> (not res!715078) (not e!612143))))

(assert (= (and d!129291 c!107638) b!1071851))

(assert (= (and d!129291 (not c!107638)) b!1071844))

(assert (= (and b!1071844 c!107636) b!1071842))

(assert (= (and b!1071844 (not c!107636)) b!1071849))

(assert (= (or b!1071842 b!1071849) bm!45236))

(assert (= (and d!129291 res!715079) b!1071846))

(assert (= (and b!1071846 res!715076) b!1071850))

(assert (= (and b!1071850 res!715077) b!1071843))

(assert (= (and b!1071850 c!107639) b!1071853))

(assert (= (and b!1071850 (not c!107639)) b!1071848))

(assert (= (and b!1071853 res!715078) b!1071847))

(assert (= (and b!1071848 c!107637) b!1071852))

(assert (= (and b!1071848 (not c!107637)) b!1071845))

(declare-fun b_lambda!16711 () Bool)

(assert (=> (not b_lambda!16711) (not b!1071842)))

(assert (=> b!1071842 t!32499))

(declare-fun b_and!34885 () Bool)

(assert (= b_and!34883 (and (=> t!32499 result!14781) b_and!34885)))

(declare-fun b_lambda!16713 () Bool)

(assert (=> (not b_lambda!16713) (not b!1071847)))

(assert (=> b!1071847 t!32499))

(declare-fun b_and!34887 () Bool)

(assert (= b_and!34885 (and (=> t!32499 result!14781) b_and!34887)))

(assert (=> b!1071853 m!990507))

(assert (=> b!1071853 m!990507))

(declare-fun m!990697 () Bool)

(assert (=> b!1071853 m!990697))

(declare-fun m!990699 () Bool)

(assert (=> b!1071845 m!990699))

(declare-fun m!990701 () Bool)

(assert (=> b!1071852 m!990701))

(declare-fun m!990703 () Bool)

(assert (=> d!129291 m!990703))

(assert (=> d!129291 m!990415))

(assert (=> bm!45236 m!990701))

(assert (=> b!1071844 m!990507))

(assert (=> b!1071844 m!990507))

(assert (=> b!1071844 m!990509))

(declare-fun m!990705 () Bool)

(assert (=> b!1071842 m!990705))

(assert (=> b!1071842 m!990529))

(assert (=> b!1071842 m!990525))

(assert (=> b!1071842 m!990525))

(assert (=> b!1071842 m!990529))

(assert (=> b!1071842 m!990531))

(declare-fun m!990707 () Bool)

(assert (=> b!1071842 m!990707))

(assert (=> b!1071842 m!990707))

(declare-fun m!990709 () Bool)

(assert (=> b!1071842 m!990709))

(declare-fun m!990711 () Bool)

(assert (=> b!1071842 m!990711))

(assert (=> b!1071842 m!990507))

(assert (=> b!1071843 m!990507))

(assert (=> b!1071843 m!990507))

(assert (=> b!1071843 m!990509))

(declare-fun m!990713 () Bool)

(assert (=> b!1071846 m!990713))

(assert (=> b!1071847 m!990525))

(assert (=> b!1071847 m!990529))

(assert (=> b!1071847 m!990531))

(assert (=> b!1071847 m!990507))

(assert (=> b!1071847 m!990529))

(assert (=> b!1071847 m!990507))

(declare-fun m!990715 () Bool)

(assert (=> b!1071847 m!990715))

(assert (=> b!1071847 m!990525))

(assert (=> b!1071654 d!129291))

(declare-fun b!1071854 () Bool)

(declare-fun lt!474629 () Unit!35245)

(declare-fun lt!474632 () Unit!35245)

(assert (=> b!1071854 (= lt!474629 lt!474632)))

(declare-fun lt!474633 () (_ BitVec 64))

(declare-fun lt!474630 () V!39587)

(declare-fun lt!474631 () (_ BitVec 64))

(declare-fun lt!474634 () ListLongMap!14553)

(assert (=> b!1071854 (not (contains!6334 (+!3148 lt!474634 (tuple2!16573 lt!474633 lt!474630)) lt!474631))))

(assert (=> b!1071854 (= lt!474632 (addStillNotContains!260 lt!474634 lt!474633 lt!474630 lt!474631))))

(assert (=> b!1071854 (= lt!474631 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1071854 (= lt!474630 (get!17179 (select (arr!32995 _values!955) #b00000000000000000000000000000000) (dynLambda!2041 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1071854 (= lt!474633 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun call!45240 () ListLongMap!14553)

(assert (=> b!1071854 (= lt!474634 call!45240)))

(declare-fun e!612147 () ListLongMap!14553)

(assert (=> b!1071854 (= e!612147 (+!3148 call!45240 (tuple2!16573 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000) (get!17179 (select (arr!32995 _values!955) #b00000000000000000000000000000000) (dynLambda!2041 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1071855 () Bool)

(declare-fun e!612148 () Bool)

(assert (=> b!1071855 (= e!612148 (validKeyInArray!0 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1071855 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!45237 () Bool)

(assert (=> bm!45237 (= call!45240 (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1071856 () Bool)

(declare-fun e!612145 () ListLongMap!14553)

(assert (=> b!1071856 (= e!612145 e!612147)))

(declare-fun c!107640 () Bool)

(assert (=> b!1071856 (= c!107640 (validKeyInArray!0 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1071857 () Bool)

(declare-fun e!612151 () Bool)

(declare-fun lt!474628 () ListLongMap!14553)

(assert (=> b!1071857 (= e!612151 (isEmpty!951 lt!474628))))

(declare-fun b!1071858 () Bool)

(declare-fun res!715080 () Bool)

(declare-fun e!612149 () Bool)

(assert (=> b!1071858 (=> (not res!715080) (not e!612149))))

(assert (=> b!1071858 (= res!715080 (not (contains!6334 lt!474628 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1071859 () Bool)

(assert (=> b!1071859 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(assert (=> b!1071859 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33532 _values!955)))))

(declare-fun e!612150 () Bool)

(assert (=> b!1071859 (= e!612150 (= (apply!965 lt!474628 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)) (get!17179 (select (arr!32995 _values!955) #b00000000000000000000000000000000) (dynLambda!2041 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1071860 () Bool)

(declare-fun e!612146 () Bool)

(assert (=> b!1071860 (= e!612146 e!612151)))

(declare-fun c!107641 () Bool)

(assert (=> b!1071860 (= c!107641 (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(declare-fun b!1071861 () Bool)

(assert (=> b!1071861 (= e!612147 call!45240)))

(declare-fun d!129293 () Bool)

(assert (=> d!129293 e!612149))

(declare-fun res!715083 () Bool)

(assert (=> d!129293 (=> (not res!715083) (not e!612149))))

(assert (=> d!129293 (= res!715083 (not (contains!6334 lt!474628 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129293 (= lt!474628 e!612145)))

(declare-fun c!107642 () Bool)

(assert (=> d!129293 (= c!107642 (bvsge #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(assert (=> d!129293 (validMask!0 mask!1515)))

(assert (=> d!129293 (= (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!474628)))

(declare-fun b!1071862 () Bool)

(assert (=> b!1071862 (= e!612149 e!612146)))

(declare-fun c!107643 () Bool)

(assert (=> b!1071862 (= c!107643 e!612148)))

(declare-fun res!715081 () Bool)

(assert (=> b!1071862 (=> (not res!715081) (not e!612148))))

(assert (=> b!1071862 (= res!715081 (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(declare-fun b!1071863 () Bool)

(assert (=> b!1071863 (= e!612145 (ListLongMap!14554 Nil!23151))))

(declare-fun b!1071864 () Bool)

(assert (=> b!1071864 (= e!612151 (= lt!474628 (getCurrentListMapNoExtraKeys!3824 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1071865 () Bool)

(assert (=> b!1071865 (= e!612146 e!612150)))

(assert (=> b!1071865 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33533 _keys!1163)))))

(declare-fun res!715082 () Bool)

(assert (=> b!1071865 (= res!715082 (contains!6334 lt!474628 (select (arr!32996 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1071865 (=> (not res!715082) (not e!612150))))

(assert (= (and d!129293 c!107642) b!1071863))

(assert (= (and d!129293 (not c!107642)) b!1071856))

(assert (= (and b!1071856 c!107640) b!1071854))

(assert (= (and b!1071856 (not c!107640)) b!1071861))

(assert (= (or b!1071854 b!1071861) bm!45237))

(assert (= (and d!129293 res!715083) b!1071858))

(assert (= (and b!1071858 res!715080) b!1071862))

(assert (= (and b!1071862 res!715081) b!1071855))

(assert (= (and b!1071862 c!107643) b!1071865))

(assert (= (and b!1071862 (not c!107643)) b!1071860))

(assert (= (and b!1071865 res!715082) b!1071859))

(assert (= (and b!1071860 c!107641) b!1071864))

(assert (= (and b!1071860 (not c!107641)) b!1071857))

(declare-fun b_lambda!16715 () Bool)

(assert (=> (not b_lambda!16715) (not b!1071854)))

(assert (=> b!1071854 t!32499))

(declare-fun b_and!34889 () Bool)

(assert (= b_and!34887 (and (=> t!32499 result!14781) b_and!34889)))

(declare-fun b_lambda!16717 () Bool)

(assert (=> (not b_lambda!16717) (not b!1071859)))

(assert (=> b!1071859 t!32499))

(declare-fun b_and!34891 () Bool)

(assert (= b_and!34889 (and (=> t!32499 result!14781) b_and!34891)))

(assert (=> b!1071865 m!990507))

(assert (=> b!1071865 m!990507))

(declare-fun m!990717 () Bool)

(assert (=> b!1071865 m!990717))

(declare-fun m!990719 () Bool)

(assert (=> b!1071857 m!990719))

(declare-fun m!990721 () Bool)

(assert (=> b!1071864 m!990721))

(declare-fun m!990723 () Bool)

(assert (=> d!129293 m!990723))

(assert (=> d!129293 m!990415))

(assert (=> bm!45237 m!990721))

(assert (=> b!1071856 m!990507))

(assert (=> b!1071856 m!990507))

(assert (=> b!1071856 m!990509))

(declare-fun m!990725 () Bool)

(assert (=> b!1071854 m!990725))

(assert (=> b!1071854 m!990529))

(assert (=> b!1071854 m!990525))

(assert (=> b!1071854 m!990525))

(assert (=> b!1071854 m!990529))

(assert (=> b!1071854 m!990531))

(declare-fun m!990727 () Bool)

(assert (=> b!1071854 m!990727))

(assert (=> b!1071854 m!990727))

(declare-fun m!990729 () Bool)

(assert (=> b!1071854 m!990729))

(declare-fun m!990731 () Bool)

(assert (=> b!1071854 m!990731))

(assert (=> b!1071854 m!990507))

(assert (=> b!1071855 m!990507))

(assert (=> b!1071855 m!990507))

(assert (=> b!1071855 m!990509))

(declare-fun m!990733 () Bool)

(assert (=> b!1071858 m!990733))

(assert (=> b!1071859 m!990525))

(assert (=> b!1071859 m!990529))

(assert (=> b!1071859 m!990531))

(assert (=> b!1071859 m!990507))

(assert (=> b!1071859 m!990529))

(assert (=> b!1071859 m!990507))

(declare-fun m!990735 () Bool)

(assert (=> b!1071859 m!990735))

(assert (=> b!1071859 m!990525))

(assert (=> b!1071654 d!129293))

(declare-fun mapIsEmpty!40471 () Bool)

(declare-fun mapRes!40471 () Bool)

(assert (=> mapIsEmpty!40471 mapRes!40471))

(declare-fun condMapEmpty!40471 () Bool)

(declare-fun mapDefault!40471 () ValueCell!12216)

(assert (=> mapNonEmpty!40465 (= condMapEmpty!40471 (= mapRest!40465 ((as const (Array (_ BitVec 32) ValueCell!12216)) mapDefault!40471)))))

(declare-fun e!612156 () Bool)

(assert (=> mapNonEmpty!40465 (= tp!77547 (and e!612156 mapRes!40471))))

(declare-fun b!1071872 () Bool)

(declare-fun e!612157 () Bool)

(assert (=> b!1071872 (= e!612157 tp_is_empty!25839)))

(declare-fun b!1071873 () Bool)

(assert (=> b!1071873 (= e!612156 tp_is_empty!25839)))

(declare-fun mapNonEmpty!40471 () Bool)

(declare-fun tp!77556 () Bool)

(assert (=> mapNonEmpty!40471 (= mapRes!40471 (and tp!77556 e!612157))))

(declare-fun mapValue!40471 () ValueCell!12216)

(declare-fun mapKey!40471 () (_ BitVec 32))

(declare-fun mapRest!40471 () (Array (_ BitVec 32) ValueCell!12216))

(assert (=> mapNonEmpty!40471 (= mapRest!40465 (store mapRest!40471 mapKey!40471 mapValue!40471))))

(assert (= (and mapNonEmpty!40465 condMapEmpty!40471) mapIsEmpty!40471))

(assert (= (and mapNonEmpty!40465 (not condMapEmpty!40471)) mapNonEmpty!40471))

(assert (= (and mapNonEmpty!40471 ((_ is ValueCellFull!12216) mapValue!40471)) b!1071872))

(assert (= (and mapNonEmpty!40465 ((_ is ValueCellFull!12216) mapDefault!40471)) b!1071873))

(declare-fun m!990737 () Bool)

(assert (=> mapNonEmpty!40471 m!990737))

(declare-fun b_lambda!16719 () Bool)

(assert (= b_lambda!16715 (or (and start!94812 b_free!22029) b_lambda!16719)))

(declare-fun b_lambda!16721 () Bool)

(assert (= b_lambda!16717 (or (and start!94812 b_free!22029) b_lambda!16721)))

(declare-fun b_lambda!16723 () Bool)

(assert (= b_lambda!16713 (or (and start!94812 b_free!22029) b_lambda!16723)))

(declare-fun b_lambda!16725 () Bool)

(assert (= b_lambda!16709 (or (and start!94812 b_free!22029) b_lambda!16725)))

(declare-fun b_lambda!16727 () Bool)

(assert (= b_lambda!16711 (or (and start!94812 b_free!22029) b_lambda!16727)))

(declare-fun b_lambda!16729 () Bool)

(assert (= b_lambda!16707 (or (and start!94812 b_free!22029) b_lambda!16729)))

(check-sat (not b_lambda!16729) (not b_next!22029) (not d!129257) (not b!1071696) (not b!1071858) (not d!129275) (not b!1071845) (not d!129263) (not b!1071857) (not b!1071816) (not b!1071855) (not b!1071799) (not bm!45223) (not b!1071780) (not b!1071854) (not b!1071773) (not bm!45218) (not d!129273) (not b!1071844) (not b!1071852) (not b!1071803) (not bm!45237) (not b!1071842) (not d!129261) (not b!1071786) (not d!129293) (not b!1071859) (not b!1071800) (not bm!45230) tp_is_empty!25839 (not b!1071846) (not d!129277) (not d!129291) (not bm!45227) (not b!1071764) (not b_lambda!16723) (not b!1071843) (not b!1071707) (not b!1071779) (not bm!45225) (not bm!45236) (not b_lambda!16719) (not b!1071789) (not b!1071847) (not b!1071802) (not b!1071695) (not b!1071791) (not b!1071768) (not d!129271) (not b!1071757) (not b!1071784) (not b_lambda!16725) (not d!129289) (not b!1071796) (not b!1071864) (not b!1071805) (not bm!45233) (not mapNonEmpty!40471) (not b!1071804) (not b!1071817) (not b!1071711) (not b!1071756) (not d!129265) (not b!1071798) (not b!1071853) (not b!1071856) (not b!1071710) (not b!1071763) (not d!129269) (not d!129279) (not b!1071865) (not b_lambda!16721) b_and!34891 (not bm!45228) (not b!1071801) (not bm!45202) (not b!1071787) (not b!1071766) (not b!1071761) (not d!129267) (not b_lambda!16727) (not bm!45220) (not bm!45221))
(check-sat b_and!34891 (not b_next!22029))
