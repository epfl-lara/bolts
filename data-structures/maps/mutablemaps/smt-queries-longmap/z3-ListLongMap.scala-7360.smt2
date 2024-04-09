; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93902 () Bool)

(assert start!93902)

(declare-fun b_free!21339 () Bool)

(declare-fun b_next!21339 () Bool)

(assert (=> start!93902 (= b_free!21339 (not b_next!21339))))

(declare-fun tp!75440 () Bool)

(declare-fun b_and!34071 () Bool)

(assert (=> start!93902 (= tp!75440 b_and!34071)))

(declare-fun b!1061571 () Bool)

(declare-fun e!604588 () Bool)

(declare-fun tp_is_empty!25149 () Bool)

(assert (=> b!1061571 (= e!604588 tp_is_empty!25149)))

(declare-fun b!1061572 () Bool)

(declare-fun e!604591 () Bool)

(declare-fun e!604590 () Bool)

(declare-fun mapRes!39394 () Bool)

(assert (=> b!1061572 (= e!604591 (and e!604590 mapRes!39394))))

(declare-fun condMapEmpty!39394 () Bool)

(declare-datatypes ((V!38667 0))(
  ( (V!38668 (val!12625 Int)) )
))
(declare-datatypes ((ValueCell!11871 0))(
  ( (ValueCellFull!11871 (v!15236 V!38667)) (EmptyCell!11871) )
))
(declare-datatypes ((array!67280 0))(
  ( (array!67281 (arr!32344 (Array (_ BitVec 32) ValueCell!11871)) (size!32881 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67280)

(declare-fun mapDefault!39394 () ValueCell!11871)

(assert (=> b!1061572 (= condMapEmpty!39394 (= (arr!32344 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11871)) mapDefault!39394)))))

(declare-fun mapIsEmpty!39394 () Bool)

(assert (=> mapIsEmpty!39394 mapRes!39394))

(declare-fun b!1061573 () Bool)

(declare-fun res!708987 () Bool)

(declare-fun e!604592 () Bool)

(assert (=> b!1061573 (=> (not res!708987) (not e!604592))))

(declare-datatypes ((array!67282 0))(
  ( (array!67283 (arr!32345 (Array (_ BitVec 32) (_ BitVec 64))) (size!32882 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67282)

(declare-datatypes ((List!22667 0))(
  ( (Nil!22664) (Cons!22663 (h!23872 (_ BitVec 64)) (t!31983 List!22667)) )
))
(declare-fun arrayNoDuplicates!0 (array!67282 (_ BitVec 32) List!22667) Bool)

(assert (=> b!1061573 (= res!708987 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22664))))

(declare-fun b!1061574 () Bool)

(declare-fun res!708984 () Bool)

(assert (=> b!1061574 (=> (not res!708984) (not e!604592))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1061574 (= res!708984 (and (= (size!32881 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32882 _keys!1163) (size!32881 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!708985 () Bool)

(assert (=> start!93902 (=> (not res!708985) (not e!604592))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93902 (= res!708985 (validMask!0 mask!1515))))

(assert (=> start!93902 e!604592))

(assert (=> start!93902 true))

(assert (=> start!93902 tp_is_empty!25149))

(declare-fun array_inv!24900 (array!67280) Bool)

(assert (=> start!93902 (and (array_inv!24900 _values!955) e!604591)))

(assert (=> start!93902 tp!75440))

(declare-fun array_inv!24901 (array!67282) Bool)

(assert (=> start!93902 (array_inv!24901 _keys!1163)))

(declare-fun b!1061575 () Bool)

(assert (=> b!1061575 (= e!604592 (not true))))

(declare-datatypes ((tuple2!16054 0))(
  ( (tuple2!16055 (_1!8037 (_ BitVec 64)) (_2!8037 V!38667)) )
))
(declare-datatypes ((List!22668 0))(
  ( (Nil!22665) (Cons!22664 (h!23873 tuple2!16054) (t!31984 List!22668)) )
))
(declare-datatypes ((ListLongMap!14035 0))(
  ( (ListLongMap!14036 (toList!7033 List!22668)) )
))
(declare-fun lt!467653 () ListLongMap!14035)

(declare-fun lt!467654 () ListLongMap!14035)

(assert (=> b!1061575 (= lt!467653 lt!467654)))

(declare-fun zeroValueBefore!47 () V!38667)

(declare-datatypes ((Unit!34741 0))(
  ( (Unit!34742) )
))
(declare-fun lt!467652 () Unit!34741)

(declare-fun minValue!907 () V!38667)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38667)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!636 (array!67282 array!67280 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38667 V!38667 V!38667 V!38667 (_ BitVec 32) Int) Unit!34741)

(assert (=> b!1061575 (= lt!467652 (lemmaNoChangeToArrayThenSameMapNoExtras!636 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3597 (array!67282 array!67280 (_ BitVec 32) (_ BitVec 32) V!38667 V!38667 (_ BitVec 32) Int) ListLongMap!14035)

(assert (=> b!1061575 (= lt!467654 (getCurrentListMapNoExtraKeys!3597 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061575 (= lt!467653 (getCurrentListMapNoExtraKeys!3597 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39394 () Bool)

(declare-fun tp!75441 () Bool)

(assert (=> mapNonEmpty!39394 (= mapRes!39394 (and tp!75441 e!604588))))

(declare-fun mapKey!39394 () (_ BitVec 32))

(declare-fun mapValue!39394 () ValueCell!11871)

(declare-fun mapRest!39394 () (Array (_ BitVec 32) ValueCell!11871))

(assert (=> mapNonEmpty!39394 (= (arr!32344 _values!955) (store mapRest!39394 mapKey!39394 mapValue!39394))))

(declare-fun b!1061576 () Bool)

(declare-fun res!708986 () Bool)

(assert (=> b!1061576 (=> (not res!708986) (not e!604592))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67282 (_ BitVec 32)) Bool)

(assert (=> b!1061576 (= res!708986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1061577 () Bool)

(assert (=> b!1061577 (= e!604590 tp_is_empty!25149)))

(assert (= (and start!93902 res!708985) b!1061574))

(assert (= (and b!1061574 res!708984) b!1061576))

(assert (= (and b!1061576 res!708986) b!1061573))

(assert (= (and b!1061573 res!708987) b!1061575))

(assert (= (and b!1061572 condMapEmpty!39394) mapIsEmpty!39394))

(assert (= (and b!1061572 (not condMapEmpty!39394)) mapNonEmpty!39394))

(get-info :version)

(assert (= (and mapNonEmpty!39394 ((_ is ValueCellFull!11871) mapValue!39394)) b!1061571))

(assert (= (and b!1061572 ((_ is ValueCellFull!11871) mapDefault!39394)) b!1061577))

(assert (= start!93902 b!1061572))

(declare-fun m!980531 () Bool)

(assert (=> b!1061575 m!980531))

(declare-fun m!980533 () Bool)

(assert (=> b!1061575 m!980533))

(declare-fun m!980535 () Bool)

(assert (=> b!1061575 m!980535))

(declare-fun m!980537 () Bool)

(assert (=> start!93902 m!980537))

(declare-fun m!980539 () Bool)

(assert (=> start!93902 m!980539))

(declare-fun m!980541 () Bool)

(assert (=> start!93902 m!980541))

(declare-fun m!980543 () Bool)

(assert (=> b!1061573 m!980543))

(declare-fun m!980545 () Bool)

(assert (=> mapNonEmpty!39394 m!980545))

(declare-fun m!980547 () Bool)

(assert (=> b!1061576 m!980547))

(check-sat tp_is_empty!25149 b_and!34071 (not b!1061576) (not b_next!21339) (not start!93902) (not mapNonEmpty!39394) (not b!1061573) (not b!1061575))
(check-sat b_and!34071 (not b_next!21339))
