; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93976 () Bool)

(assert start!93976)

(declare-fun b_free!21399 () Bool)

(declare-fun b_next!21399 () Bool)

(assert (=> start!93976 (= b_free!21399 (not b_next!21399))))

(declare-fun tp!75624 () Bool)

(declare-fun b_and!34139 () Bool)

(assert (=> start!93976 (= tp!75624 b_and!34139)))

(declare-fun b!1062413 () Bool)

(declare-fun res!709504 () Bool)

(declare-fun e!605224 () Bool)

(assert (=> b!1062413 (=> (not res!709504) (not e!605224))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38747 0))(
  ( (V!38748 (val!12655 Int)) )
))
(declare-datatypes ((ValueCell!11901 0))(
  ( (ValueCellFull!11901 (v!15266 V!38747)) (EmptyCell!11901) )
))
(declare-datatypes ((array!67392 0))(
  ( (array!67393 (arr!32399 (Array (_ BitVec 32) ValueCell!11901)) (size!32936 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67392)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67394 0))(
  ( (array!67395 (arr!32400 (Array (_ BitVec 32) (_ BitVec 64))) (size!32937 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67394)

(assert (=> b!1062413 (= res!709504 (and (= (size!32936 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32937 _keys!1163) (size!32936 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!709506 () Bool)

(assert (=> start!93976 (=> (not res!709506) (not e!605224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93976 (= res!709506 (validMask!0 mask!1515))))

(assert (=> start!93976 e!605224))

(assert (=> start!93976 true))

(declare-fun tp_is_empty!25209 () Bool)

(assert (=> start!93976 tp_is_empty!25209))

(declare-fun e!605221 () Bool)

(declare-fun array_inv!24936 (array!67392) Bool)

(assert (=> start!93976 (and (array_inv!24936 _values!955) e!605221)))

(assert (=> start!93976 tp!75624))

(declare-fun array_inv!24937 (array!67394) Bool)

(assert (=> start!93976 (array_inv!24937 _keys!1163)))

(declare-fun b!1062414 () Bool)

(declare-fun e!605223 () Bool)

(assert (=> b!1062414 (= e!605223 true)))

(declare-datatypes ((tuple2!16096 0))(
  ( (tuple2!16097 (_1!8058 (_ BitVec 64)) (_2!8058 V!38747)) )
))
(declare-datatypes ((List!22708 0))(
  ( (Nil!22705) (Cons!22704 (h!23913 tuple2!16096) (t!32026 List!22708)) )
))
(declare-datatypes ((ListLongMap!14077 0))(
  ( (ListLongMap!14078 (toList!7054 List!22708)) )
))
(declare-fun lt!468090 () ListLongMap!14077)

(declare-fun -!568 (ListLongMap!14077 (_ BitVec 64)) ListLongMap!14077)

(assert (=> b!1062414 (= (-!568 lt!468090 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468090)))

(declare-datatypes ((Unit!34779 0))(
  ( (Unit!34780) )
))
(declare-fun lt!468089 () Unit!34779)

(declare-fun removeNotPresentStillSame!14 (ListLongMap!14077 (_ BitVec 64)) Unit!34779)

(assert (=> b!1062414 (= lt!468089 (removeNotPresentStillSame!14 lt!468090 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062415 () Bool)

(declare-fun res!709505 () Bool)

(assert (=> b!1062415 (=> (not res!709505) (not e!605224))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67394 (_ BitVec 32)) Bool)

(assert (=> b!1062415 (= res!709505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39487 () Bool)

(declare-fun mapRes!39487 () Bool)

(assert (=> mapIsEmpty!39487 mapRes!39487))

(declare-fun b!1062416 () Bool)

(declare-fun e!605225 () Bool)

(assert (=> b!1062416 (= e!605225 tp_is_empty!25209)))

(declare-fun b!1062417 () Bool)

(declare-fun e!605226 () Bool)

(assert (=> b!1062417 (= e!605224 (not e!605226))))

(declare-fun res!709503 () Bool)

(assert (=> b!1062417 (=> res!709503 e!605226)))

(assert (=> b!1062417 (= res!709503 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!468092 () ListLongMap!14077)

(declare-fun lt!468091 () ListLongMap!14077)

(assert (=> b!1062417 (= lt!468092 lt!468091)))

(declare-fun zeroValueBefore!47 () V!38747)

(declare-fun lt!468093 () Unit!34779)

(declare-fun minValue!907 () V!38747)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38747)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!655 (array!67394 array!67392 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38747 V!38747 V!38747 V!38747 (_ BitVec 32) Int) Unit!34779)

(assert (=> b!1062417 (= lt!468093 (lemmaNoChangeToArrayThenSameMapNoExtras!655 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3616 (array!67394 array!67392 (_ BitVec 32) (_ BitVec 32) V!38747 V!38747 (_ BitVec 32) Int) ListLongMap!14077)

(assert (=> b!1062417 (= lt!468091 (getCurrentListMapNoExtraKeys!3616 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062417 (= lt!468092 (getCurrentListMapNoExtraKeys!3616 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062418 () Bool)

(assert (=> b!1062418 (= e!605221 (and e!605225 mapRes!39487))))

(declare-fun condMapEmpty!39487 () Bool)

(declare-fun mapDefault!39487 () ValueCell!11901)

(assert (=> b!1062418 (= condMapEmpty!39487 (= (arr!32399 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11901)) mapDefault!39487)))))

(declare-fun b!1062419 () Bool)

(declare-fun res!709507 () Bool)

(assert (=> b!1062419 (=> (not res!709507) (not e!605224))))

(declare-datatypes ((List!22709 0))(
  ( (Nil!22706) (Cons!22705 (h!23914 (_ BitVec 64)) (t!32027 List!22709)) )
))
(declare-fun arrayNoDuplicates!0 (array!67394 (_ BitVec 32) List!22709) Bool)

(assert (=> b!1062419 (= res!709507 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22706))))

(declare-fun b!1062420 () Bool)

(assert (=> b!1062420 (= e!605226 e!605223)))

(declare-fun res!709502 () Bool)

(assert (=> b!1062420 (=> res!709502 e!605223)))

(declare-fun contains!6250 (ListLongMap!14077 (_ BitVec 64)) Bool)

(assert (=> b!1062420 (= res!709502 (contains!6250 lt!468090 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4000 (array!67394 array!67392 (_ BitVec 32) (_ BitVec 32) V!38747 V!38747 (_ BitVec 32) Int) ListLongMap!14077)

(assert (=> b!1062420 (= lt!468090 (getCurrentListMap!4000 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39487 () Bool)

(declare-fun tp!75623 () Bool)

(declare-fun e!605222 () Bool)

(assert (=> mapNonEmpty!39487 (= mapRes!39487 (and tp!75623 e!605222))))

(declare-fun mapRest!39487 () (Array (_ BitVec 32) ValueCell!11901))

(declare-fun mapValue!39487 () ValueCell!11901)

(declare-fun mapKey!39487 () (_ BitVec 32))

(assert (=> mapNonEmpty!39487 (= (arr!32399 _values!955) (store mapRest!39487 mapKey!39487 mapValue!39487))))

(declare-fun b!1062421 () Bool)

(assert (=> b!1062421 (= e!605222 tp_is_empty!25209)))

(assert (= (and start!93976 res!709506) b!1062413))

(assert (= (and b!1062413 res!709504) b!1062415))

(assert (= (and b!1062415 res!709505) b!1062419))

(assert (= (and b!1062419 res!709507) b!1062417))

(assert (= (and b!1062417 (not res!709503)) b!1062420))

(assert (= (and b!1062420 (not res!709502)) b!1062414))

(assert (= (and b!1062418 condMapEmpty!39487) mapIsEmpty!39487))

(assert (= (and b!1062418 (not condMapEmpty!39487)) mapNonEmpty!39487))

(get-info :version)

(assert (= (and mapNonEmpty!39487 ((_ is ValueCellFull!11901) mapValue!39487)) b!1062421))

(assert (= (and b!1062418 ((_ is ValueCellFull!11901) mapDefault!39487)) b!1062416))

(assert (= start!93976 b!1062418))

(declare-fun m!981301 () Bool)

(assert (=> b!1062414 m!981301))

(declare-fun m!981303 () Bool)

(assert (=> b!1062414 m!981303))

(declare-fun m!981305 () Bool)

(assert (=> start!93976 m!981305))

(declare-fun m!981307 () Bool)

(assert (=> start!93976 m!981307))

(declare-fun m!981309 () Bool)

(assert (=> start!93976 m!981309))

(declare-fun m!981311 () Bool)

(assert (=> b!1062415 m!981311))

(declare-fun m!981313 () Bool)

(assert (=> b!1062417 m!981313))

(declare-fun m!981315 () Bool)

(assert (=> b!1062417 m!981315))

(declare-fun m!981317 () Bool)

(assert (=> b!1062417 m!981317))

(declare-fun m!981319 () Bool)

(assert (=> b!1062419 m!981319))

(declare-fun m!981321 () Bool)

(assert (=> b!1062420 m!981321))

(declare-fun m!981323 () Bool)

(assert (=> b!1062420 m!981323))

(declare-fun m!981325 () Bool)

(assert (=> mapNonEmpty!39487 m!981325))

(check-sat (not b_next!21399) (not start!93976) b_and!34139 (not b!1062420) (not mapNonEmpty!39487) tp_is_empty!25209 (not b!1062414) (not b!1062417) (not b!1062419) (not b!1062415))
(check-sat b_and!34139 (not b_next!21399))
