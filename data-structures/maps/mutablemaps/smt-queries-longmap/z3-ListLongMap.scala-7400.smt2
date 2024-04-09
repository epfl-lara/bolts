; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94230 () Bool)

(assert start!94230)

(declare-fun b_free!21579 () Bool)

(declare-fun b_next!21579 () Bool)

(assert (=> start!94230 (= b_free!21579 (not b_next!21579))))

(declare-fun tp!76175 () Bool)

(declare-fun b_and!34357 () Bool)

(assert (=> start!94230 (= tp!76175 b_and!34357)))

(declare-fun b!1065147 () Bool)

(declare-fun e!607217 () Bool)

(declare-fun tp_is_empty!25389 () Bool)

(assert (=> b!1065147 (= e!607217 tp_is_empty!25389)))

(declare-fun b!1065148 () Bool)

(declare-fun res!711091 () Bool)

(declare-fun e!607218 () Bool)

(assert (=> b!1065148 (=> (not res!711091) (not e!607218))))

(declare-datatypes ((array!67738 0))(
  ( (array!67739 (arr!32568 (Array (_ BitVec 32) (_ BitVec 64))) (size!33105 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67738)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67738 (_ BitVec 32)) Bool)

(assert (=> b!1065148 (= res!711091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39769 () Bool)

(declare-fun mapRes!39769 () Bool)

(declare-fun tp!76176 () Bool)

(declare-fun e!607219 () Bool)

(assert (=> mapNonEmpty!39769 (= mapRes!39769 (and tp!76176 e!607219))))

(declare-datatypes ((V!38987 0))(
  ( (V!38988 (val!12745 Int)) )
))
(declare-datatypes ((ValueCell!11991 0))(
  ( (ValueCellFull!11991 (v!15358 V!38987)) (EmptyCell!11991) )
))
(declare-fun mapValue!39769 () ValueCell!11991)

(declare-fun mapRest!39769 () (Array (_ BitVec 32) ValueCell!11991))

(declare-datatypes ((array!67740 0))(
  ( (array!67741 (arr!32569 (Array (_ BitVec 32) ValueCell!11991)) (size!33106 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67740)

(declare-fun mapKey!39769 () (_ BitVec 32))

(assert (=> mapNonEmpty!39769 (= (arr!32569 _values!955) (store mapRest!39769 mapKey!39769 mapValue!39769))))

(declare-fun b!1065149 () Bool)

(declare-fun e!607222 () Bool)

(assert (=> b!1065149 (= e!607222 (and e!607217 mapRes!39769))))

(declare-fun condMapEmpty!39769 () Bool)

(declare-fun mapDefault!39769 () ValueCell!11991)

(assert (=> b!1065149 (= condMapEmpty!39769 (= (arr!32569 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11991)) mapDefault!39769)))))

(declare-fun res!711093 () Bool)

(assert (=> start!94230 (=> (not res!711093) (not e!607218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94230 (= res!711093 (validMask!0 mask!1515))))

(assert (=> start!94230 e!607218))

(assert (=> start!94230 true))

(assert (=> start!94230 tp_is_empty!25389))

(declare-fun array_inv!25054 (array!67740) Bool)

(assert (=> start!94230 (and (array_inv!25054 _values!955) e!607222)))

(assert (=> start!94230 tp!76175))

(declare-fun array_inv!25055 (array!67738) Bool)

(assert (=> start!94230 (array_inv!25055 _keys!1163)))

(declare-fun b!1065150 () Bool)

(declare-fun res!711094 () Bool)

(assert (=> b!1065150 (=> (not res!711094) (not e!607218))))

(declare-datatypes ((List!22829 0))(
  ( (Nil!22826) (Cons!22825 (h!24034 (_ BitVec 64)) (t!32155 List!22829)) )
))
(declare-fun arrayNoDuplicates!0 (array!67738 (_ BitVec 32) List!22829) Bool)

(assert (=> b!1065150 (= res!711094 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22826))))

(declare-fun mapIsEmpty!39769 () Bool)

(assert (=> mapIsEmpty!39769 mapRes!39769))

(declare-fun b!1065151 () Bool)

(declare-fun e!607220 () Bool)

(declare-datatypes ((tuple2!16230 0))(
  ( (tuple2!16231 (_1!8125 (_ BitVec 64)) (_2!8125 V!38987)) )
))
(declare-datatypes ((List!22830 0))(
  ( (Nil!22827) (Cons!22826 (h!24035 tuple2!16230) (t!32156 List!22830)) )
))
(declare-datatypes ((ListLongMap!14211 0))(
  ( (ListLongMap!14212 (toList!7121 List!22830)) )
))
(declare-fun lt!469596 () ListLongMap!14211)

(declare-fun lt!469600 () ListLongMap!14211)

(assert (=> b!1065151 (= e!607220 (= lt!469596 lt!469600))))

(declare-fun b!1065152 () Bool)

(declare-fun res!711092 () Bool)

(assert (=> b!1065152 (=> (not res!711092) (not e!607218))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065152 (= res!711092 (and (= (size!33106 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33105 _keys!1163) (size!33106 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065153 () Bool)

(declare-fun e!607221 () Bool)

(assert (=> b!1065153 (= e!607218 (not e!607221))))

(declare-fun res!711095 () Bool)

(assert (=> b!1065153 (=> res!711095 e!607221)))

(assert (=> b!1065153 (= res!711095 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!469598 () ListLongMap!14211)

(assert (=> b!1065153 (= lt!469598 lt!469600)))

(declare-fun zeroValueBefore!47 () V!38987)

(declare-datatypes ((Unit!34904 0))(
  ( (Unit!34905) )
))
(declare-fun lt!469597 () Unit!34904)

(declare-fun minValue!907 () V!38987)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38987)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!711 (array!67738 array!67740 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38987 V!38987 V!38987 V!38987 (_ BitVec 32) Int) Unit!34904)

(assert (=> b!1065153 (= lt!469597 (lemmaNoChangeToArrayThenSameMapNoExtras!711 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3672 (array!67738 array!67740 (_ BitVec 32) (_ BitVec 32) V!38987 V!38987 (_ BitVec 32) Int) ListLongMap!14211)

(assert (=> b!1065153 (= lt!469600 (getCurrentListMapNoExtraKeys!3672 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065153 (= lt!469598 (getCurrentListMapNoExtraKeys!3672 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065154 () Bool)

(assert (=> b!1065154 (= e!607219 tp_is_empty!25389)))

(declare-fun b!1065155 () Bool)

(assert (=> b!1065155 (= e!607221 true)))

(declare-fun lt!469599 () Bool)

(declare-fun contains!6283 (ListLongMap!14211 (_ BitVec 64)) Bool)

(assert (=> b!1065155 (= lt!469599 (contains!6283 lt!469598 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1065155 e!607220))

(declare-fun res!711090 () Bool)

(assert (=> b!1065155 (=> (not res!711090) (not e!607220))))

(declare-fun lt!469595 () ListLongMap!14211)

(declare-fun +!3081 (ListLongMap!14211 tuple2!16230) ListLongMap!14211)

(assert (=> b!1065155 (= res!711090 (= lt!469595 (+!3081 lt!469598 (tuple2!16231 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun getCurrentListMap!4044 (array!67738 array!67740 (_ BitVec 32) (_ BitVec 32) V!38987 V!38987 (_ BitVec 32) Int) ListLongMap!14211)

(assert (=> b!1065155 (= lt!469596 (getCurrentListMap!4044 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065155 (= lt!469595 (getCurrentListMap!4044 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94230 res!711093) b!1065152))

(assert (= (and b!1065152 res!711092) b!1065148))

(assert (= (and b!1065148 res!711091) b!1065150))

(assert (= (and b!1065150 res!711094) b!1065153))

(assert (= (and b!1065153 (not res!711095)) b!1065155))

(assert (= (and b!1065155 res!711090) b!1065151))

(assert (= (and b!1065149 condMapEmpty!39769) mapIsEmpty!39769))

(assert (= (and b!1065149 (not condMapEmpty!39769)) mapNonEmpty!39769))

(get-info :version)

(assert (= (and mapNonEmpty!39769 ((_ is ValueCellFull!11991) mapValue!39769)) b!1065154))

(assert (= (and b!1065149 ((_ is ValueCellFull!11991) mapDefault!39769)) b!1065147))

(assert (= start!94230 b!1065149))

(declare-fun m!983693 () Bool)

(assert (=> b!1065148 m!983693))

(declare-fun m!983695 () Bool)

(assert (=> b!1065155 m!983695))

(declare-fun m!983697 () Bool)

(assert (=> b!1065155 m!983697))

(declare-fun m!983699 () Bool)

(assert (=> b!1065155 m!983699))

(declare-fun m!983701 () Bool)

(assert (=> b!1065155 m!983701))

(declare-fun m!983703 () Bool)

(assert (=> b!1065150 m!983703))

(declare-fun m!983705 () Bool)

(assert (=> mapNonEmpty!39769 m!983705))

(declare-fun m!983707 () Bool)

(assert (=> start!94230 m!983707))

(declare-fun m!983709 () Bool)

(assert (=> start!94230 m!983709))

(declare-fun m!983711 () Bool)

(assert (=> start!94230 m!983711))

(declare-fun m!983713 () Bool)

(assert (=> b!1065153 m!983713))

(declare-fun m!983715 () Bool)

(assert (=> b!1065153 m!983715))

(declare-fun m!983717 () Bool)

(assert (=> b!1065153 m!983717))

(check-sat (not mapNonEmpty!39769) (not b_next!21579) (not start!94230) (not b!1065148) b_and!34357 (not b!1065155) tp_is_empty!25389 (not b!1065153) (not b!1065150))
(check-sat b_and!34357 (not b_next!21579))
