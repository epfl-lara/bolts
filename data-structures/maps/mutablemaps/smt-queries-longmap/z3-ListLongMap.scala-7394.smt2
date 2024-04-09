; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94178 () Bool)

(assert start!94178)

(declare-fun b_free!21543 () Bool)

(declare-fun b_next!21543 () Bool)

(assert (=> start!94178 (= b_free!21543 (not b_next!21543))))

(declare-fun tp!76065 () Bool)

(declare-fun b_and!34311 () Bool)

(assert (=> start!94178 (= tp!76065 b_and!34311)))

(declare-fun b!1064562 () Bool)

(declare-fun e!606797 () Bool)

(declare-fun tp_is_empty!25353 () Bool)

(assert (=> b!1064562 (= e!606797 tp_is_empty!25353)))

(declare-fun mapIsEmpty!39712 () Bool)

(declare-fun mapRes!39712 () Bool)

(assert (=> mapIsEmpty!39712 mapRes!39712))

(declare-fun mapNonEmpty!39712 () Bool)

(declare-fun tp!76064 () Bool)

(declare-fun e!606793 () Bool)

(assert (=> mapNonEmpty!39712 (= mapRes!39712 (and tp!76064 e!606793))))

(declare-fun mapKey!39712 () (_ BitVec 32))

(declare-datatypes ((V!38939 0))(
  ( (V!38940 (val!12727 Int)) )
))
(declare-datatypes ((ValueCell!11973 0))(
  ( (ValueCellFull!11973 (v!15340 V!38939)) (EmptyCell!11973) )
))
(declare-datatypes ((array!67670 0))(
  ( (array!67671 (arr!32535 (Array (_ BitVec 32) ValueCell!11973)) (size!33072 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67670)

(declare-fun mapRest!39712 () (Array (_ BitVec 32) ValueCell!11973))

(declare-fun mapValue!39712 () ValueCell!11973)

(assert (=> mapNonEmpty!39712 (= (arr!32535 _values!955) (store mapRest!39712 mapKey!39712 mapValue!39712))))

(declare-fun b!1064563 () Bool)

(declare-fun e!606794 () Bool)

(assert (=> b!1064563 (= e!606794 (and e!606797 mapRes!39712))))

(declare-fun condMapEmpty!39712 () Bool)

(declare-fun mapDefault!39712 () ValueCell!11973)

(assert (=> b!1064563 (= condMapEmpty!39712 (= (arr!32535 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11973)) mapDefault!39712)))))

(declare-fun res!710760 () Bool)

(declare-fun e!606796 () Bool)

(assert (=> start!94178 (=> (not res!710760) (not e!606796))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94178 (= res!710760 (validMask!0 mask!1515))))

(assert (=> start!94178 e!606796))

(assert (=> start!94178 true))

(assert (=> start!94178 tp_is_empty!25353))

(declare-fun array_inv!25030 (array!67670) Bool)

(assert (=> start!94178 (and (array_inv!25030 _values!955) e!606794)))

(assert (=> start!94178 tp!76065))

(declare-datatypes ((array!67672 0))(
  ( (array!67673 (arr!32536 (Array (_ BitVec 32) (_ BitVec 64))) (size!33073 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67672)

(declare-fun array_inv!25031 (array!67672) Bool)

(assert (=> start!94178 (array_inv!25031 _keys!1163)))

(declare-fun b!1064564 () Bool)

(declare-fun e!606795 () Bool)

(assert (=> b!1064564 (= e!606796 (not e!606795))))

(declare-fun res!710761 () Bool)

(assert (=> b!1064564 (=> res!710761 e!606795)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1064564 (= res!710761 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16204 0))(
  ( (tuple2!16205 (_1!8112 (_ BitVec 64)) (_2!8112 V!38939)) )
))
(declare-datatypes ((List!22805 0))(
  ( (Nil!22802) (Cons!22801 (h!24010 tuple2!16204) (t!32129 List!22805)) )
))
(declare-datatypes ((ListLongMap!14185 0))(
  ( (ListLongMap!14186 (toList!7108 List!22805)) )
))
(declare-fun lt!469265 () ListLongMap!14185)

(declare-fun lt!469266 () ListLongMap!14185)

(assert (=> b!1064564 (= lt!469265 lt!469266)))

(declare-fun zeroValueBefore!47 () V!38939)

(declare-fun minValue!907 () V!38939)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38939)

(declare-datatypes ((Unit!34881 0))(
  ( (Unit!34882) )
))
(declare-fun lt!469264 () Unit!34881)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!700 (array!67672 array!67670 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38939 V!38939 V!38939 V!38939 (_ BitVec 32) Int) Unit!34881)

(assert (=> b!1064564 (= lt!469264 (lemmaNoChangeToArrayThenSameMapNoExtras!700 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3661 (array!67672 array!67670 (_ BitVec 32) (_ BitVec 32) V!38939 V!38939 (_ BitVec 32) Int) ListLongMap!14185)

(assert (=> b!1064564 (= lt!469266 (getCurrentListMapNoExtraKeys!3661 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064564 (= lt!469265 (getCurrentListMapNoExtraKeys!3661 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064565 () Bool)

(declare-fun res!710758 () Bool)

(assert (=> b!1064565 (=> (not res!710758) (not e!606796))))

(declare-datatypes ((List!22806 0))(
  ( (Nil!22803) (Cons!22802 (h!24011 (_ BitVec 64)) (t!32130 List!22806)) )
))
(declare-fun arrayNoDuplicates!0 (array!67672 (_ BitVec 32) List!22806) Bool)

(assert (=> b!1064565 (= res!710758 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22803))))

(declare-fun b!1064566 () Bool)

(declare-fun res!710759 () Bool)

(assert (=> b!1064566 (=> (not res!710759) (not e!606796))))

(assert (=> b!1064566 (= res!710759 (and (= (size!33072 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33073 _keys!1163) (size!33072 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064567 () Bool)

(assert (=> b!1064567 (= e!606793 tp_is_empty!25353)))

(declare-fun b!1064568 () Bool)

(assert (=> b!1064568 (= e!606795 true)))

(declare-fun lt!469263 () ListLongMap!14185)

(declare-fun getCurrentListMap!4032 (array!67672 array!67670 (_ BitVec 32) (_ BitVec 32) V!38939 V!38939 (_ BitVec 32) Int) ListLongMap!14185)

(assert (=> b!1064568 (= lt!469263 (getCurrentListMap!4032 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064569 () Bool)

(declare-fun res!710757 () Bool)

(assert (=> b!1064569 (=> (not res!710757) (not e!606796))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67672 (_ BitVec 32)) Bool)

(assert (=> b!1064569 (= res!710757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!94178 res!710760) b!1064566))

(assert (= (and b!1064566 res!710759) b!1064569))

(assert (= (and b!1064569 res!710757) b!1064565))

(assert (= (and b!1064565 res!710758) b!1064564))

(assert (= (and b!1064564 (not res!710761)) b!1064568))

(assert (= (and b!1064563 condMapEmpty!39712) mapIsEmpty!39712))

(assert (= (and b!1064563 (not condMapEmpty!39712)) mapNonEmpty!39712))

(get-info :version)

(assert (= (and mapNonEmpty!39712 ((_ is ValueCellFull!11973) mapValue!39712)) b!1064567))

(assert (= (and b!1064563 ((_ is ValueCellFull!11973) mapDefault!39712)) b!1064562))

(assert (= start!94178 b!1064563))

(declare-fun m!983215 () Bool)

(assert (=> start!94178 m!983215))

(declare-fun m!983217 () Bool)

(assert (=> start!94178 m!983217))

(declare-fun m!983219 () Bool)

(assert (=> start!94178 m!983219))

(declare-fun m!983221 () Bool)

(assert (=> b!1064564 m!983221))

(declare-fun m!983223 () Bool)

(assert (=> b!1064564 m!983223))

(declare-fun m!983225 () Bool)

(assert (=> b!1064564 m!983225))

(declare-fun m!983227 () Bool)

(assert (=> mapNonEmpty!39712 m!983227))

(declare-fun m!983229 () Bool)

(assert (=> b!1064565 m!983229))

(declare-fun m!983231 () Bool)

(assert (=> b!1064569 m!983231))

(declare-fun m!983233 () Bool)

(assert (=> b!1064568 m!983233))

(check-sat (not mapNonEmpty!39712) (not b!1064568) (not start!94178) tp_is_empty!25353 (not b!1064564) (not b!1064569) (not b_next!21543) b_and!34311 (not b!1064565))
(check-sat b_and!34311 (not b_next!21543))
