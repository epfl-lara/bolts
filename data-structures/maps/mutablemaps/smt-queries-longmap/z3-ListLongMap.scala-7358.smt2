; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93890 () Bool)

(assert start!93890)

(declare-fun b_free!21327 () Bool)

(declare-fun b_next!21327 () Bool)

(assert (=> start!93890 (= b_free!21327 (not b_next!21327))))

(declare-fun tp!75404 () Bool)

(declare-fun b_and!34059 () Bool)

(assert (=> start!93890 (= tp!75404 b_and!34059)))

(declare-fun b!1061445 () Bool)

(declare-fun e!604498 () Bool)

(assert (=> b!1061445 (= e!604498 (not true))))

(declare-datatypes ((V!38651 0))(
  ( (V!38652 (val!12619 Int)) )
))
(declare-datatypes ((tuple2!16044 0))(
  ( (tuple2!16045 (_1!8032 (_ BitVec 64)) (_2!8032 V!38651)) )
))
(declare-datatypes ((List!22657 0))(
  ( (Nil!22654) (Cons!22653 (h!23862 tuple2!16044) (t!31973 List!22657)) )
))
(declare-datatypes ((ListLongMap!14025 0))(
  ( (ListLongMap!14026 (toList!7028 List!22657)) )
))
(declare-fun lt!467598 () ListLongMap!14025)

(declare-fun lt!467599 () ListLongMap!14025)

(assert (=> b!1061445 (= lt!467598 lt!467599)))

(declare-fun zeroValueBefore!47 () V!38651)

(declare-datatypes ((ValueCell!11865 0))(
  ( (ValueCellFull!11865 (v!15230 V!38651)) (EmptyCell!11865) )
))
(declare-datatypes ((array!67258 0))(
  ( (array!67259 (arr!32333 (Array (_ BitVec 32) ValueCell!11865)) (size!32870 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67258)

(declare-fun minValue!907 () V!38651)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((Unit!34731 0))(
  ( (Unit!34732) )
))
(declare-fun lt!467600 () Unit!34731)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38651)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67260 0))(
  ( (array!67261 (arr!32334 (Array (_ BitVec 32) (_ BitVec 64))) (size!32871 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67260)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!631 (array!67260 array!67258 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38651 V!38651 V!38651 V!38651 (_ BitVec 32) Int) Unit!34731)

(assert (=> b!1061445 (= lt!467600 (lemmaNoChangeToArrayThenSameMapNoExtras!631 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3592 (array!67260 array!67258 (_ BitVec 32) (_ BitVec 32) V!38651 V!38651 (_ BitVec 32) Int) ListLongMap!14025)

(assert (=> b!1061445 (= lt!467599 (getCurrentListMapNoExtraKeys!3592 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061445 (= lt!467598 (getCurrentListMapNoExtraKeys!3592 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061446 () Bool)

(declare-fun res!708912 () Bool)

(assert (=> b!1061446 (=> (not res!708912) (not e!604498))))

(assert (=> b!1061446 (= res!708912 (and (= (size!32870 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32871 _keys!1163) (size!32870 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061447 () Bool)

(declare-fun e!604501 () Bool)

(declare-fun tp_is_empty!25137 () Bool)

(assert (=> b!1061447 (= e!604501 tp_is_empty!25137)))

(declare-fun b!1061448 () Bool)

(declare-fun e!604499 () Bool)

(declare-fun e!604500 () Bool)

(declare-fun mapRes!39376 () Bool)

(assert (=> b!1061448 (= e!604499 (and e!604500 mapRes!39376))))

(declare-fun condMapEmpty!39376 () Bool)

(declare-fun mapDefault!39376 () ValueCell!11865)

(assert (=> b!1061448 (= condMapEmpty!39376 (= (arr!32333 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11865)) mapDefault!39376)))))

(declare-fun b!1061449 () Bool)

(declare-fun res!708915 () Bool)

(assert (=> b!1061449 (=> (not res!708915) (not e!604498))))

(declare-datatypes ((List!22658 0))(
  ( (Nil!22655) (Cons!22654 (h!23863 (_ BitVec 64)) (t!31974 List!22658)) )
))
(declare-fun arrayNoDuplicates!0 (array!67260 (_ BitVec 32) List!22658) Bool)

(assert (=> b!1061449 (= res!708915 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22655))))

(declare-fun mapNonEmpty!39376 () Bool)

(declare-fun tp!75405 () Bool)

(assert (=> mapNonEmpty!39376 (= mapRes!39376 (and tp!75405 e!604501))))

(declare-fun mapRest!39376 () (Array (_ BitVec 32) ValueCell!11865))

(declare-fun mapKey!39376 () (_ BitVec 32))

(declare-fun mapValue!39376 () ValueCell!11865)

(assert (=> mapNonEmpty!39376 (= (arr!32333 _values!955) (store mapRest!39376 mapKey!39376 mapValue!39376))))

(declare-fun b!1061450 () Bool)

(assert (=> b!1061450 (= e!604500 tp_is_empty!25137)))

(declare-fun b!1061451 () Bool)

(declare-fun res!708913 () Bool)

(assert (=> b!1061451 (=> (not res!708913) (not e!604498))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67260 (_ BitVec 32)) Bool)

(assert (=> b!1061451 (= res!708913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39376 () Bool)

(assert (=> mapIsEmpty!39376 mapRes!39376))

(declare-fun res!708914 () Bool)

(assert (=> start!93890 (=> (not res!708914) (not e!604498))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93890 (= res!708914 (validMask!0 mask!1515))))

(assert (=> start!93890 e!604498))

(assert (=> start!93890 true))

(assert (=> start!93890 tp_is_empty!25137))

(declare-fun array_inv!24894 (array!67258) Bool)

(assert (=> start!93890 (and (array_inv!24894 _values!955) e!604499)))

(assert (=> start!93890 tp!75404))

(declare-fun array_inv!24895 (array!67260) Bool)

(assert (=> start!93890 (array_inv!24895 _keys!1163)))

(assert (= (and start!93890 res!708914) b!1061446))

(assert (= (and b!1061446 res!708912) b!1061451))

(assert (= (and b!1061451 res!708913) b!1061449))

(assert (= (and b!1061449 res!708915) b!1061445))

(assert (= (and b!1061448 condMapEmpty!39376) mapIsEmpty!39376))

(assert (= (and b!1061448 (not condMapEmpty!39376)) mapNonEmpty!39376))

(get-info :version)

(assert (= (and mapNonEmpty!39376 ((_ is ValueCellFull!11865) mapValue!39376)) b!1061447))

(assert (= (and b!1061448 ((_ is ValueCellFull!11865) mapDefault!39376)) b!1061450))

(assert (= start!93890 b!1061448))

(declare-fun m!980423 () Bool)

(assert (=> start!93890 m!980423))

(declare-fun m!980425 () Bool)

(assert (=> start!93890 m!980425))

(declare-fun m!980427 () Bool)

(assert (=> start!93890 m!980427))

(declare-fun m!980429 () Bool)

(assert (=> b!1061451 m!980429))

(declare-fun m!980431 () Bool)

(assert (=> b!1061445 m!980431))

(declare-fun m!980433 () Bool)

(assert (=> b!1061445 m!980433))

(declare-fun m!980435 () Bool)

(assert (=> b!1061445 m!980435))

(declare-fun m!980437 () Bool)

(assert (=> mapNonEmpty!39376 m!980437))

(declare-fun m!980439 () Bool)

(assert (=> b!1061449 m!980439))

(check-sat b_and!34059 tp_is_empty!25137 (not b_next!21327) (not mapNonEmpty!39376) (not b!1061449) (not start!93890) (not b!1061445) (not b!1061451))
(check-sat b_and!34059 (not b_next!21327))
