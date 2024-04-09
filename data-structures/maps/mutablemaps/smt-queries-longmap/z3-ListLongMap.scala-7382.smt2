; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94092 () Bool)

(assert start!94092)

(declare-fun b_free!21471 () Bool)

(declare-fun b_next!21471 () Bool)

(assert (=> start!94092 (= b_free!21471 (not b_next!21471))))

(declare-fun tp!75845 () Bool)

(declare-fun b_and!34231 () Bool)

(assert (=> start!94092 (= tp!75845 b_and!34231)))

(declare-fun mapNonEmpty!39601 () Bool)

(declare-fun mapRes!39601 () Bool)

(declare-fun tp!75846 () Bool)

(declare-fun e!606170 () Bool)

(assert (=> mapNonEmpty!39601 (= mapRes!39601 (and tp!75846 e!606170))))

(declare-datatypes ((V!38843 0))(
  ( (V!38844 (val!12691 Int)) )
))
(declare-datatypes ((ValueCell!11937 0))(
  ( (ValueCellFull!11937 (v!15304 V!38843)) (EmptyCell!11937) )
))
(declare-fun mapRest!39601 () (Array (_ BitVec 32) ValueCell!11937))

(declare-fun mapKey!39601 () (_ BitVec 32))

(declare-datatypes ((array!67536 0))(
  ( (array!67537 (arr!32469 (Array (_ BitVec 32) ValueCell!11937)) (size!33006 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67536)

(declare-fun mapValue!39601 () ValueCell!11937)

(assert (=> mapNonEmpty!39601 (= (arr!32469 _values!955) (store mapRest!39601 mapKey!39601 mapValue!39601))))

(declare-fun b!1063690 () Bool)

(declare-fun res!710265 () Bool)

(declare-fun e!606169 () Bool)

(assert (=> b!1063690 (=> (not res!710265) (not e!606169))))

(declare-datatypes ((array!67538 0))(
  ( (array!67539 (arr!32470 (Array (_ BitVec 32) (_ BitVec 64))) (size!33007 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67538)

(declare-datatypes ((List!22763 0))(
  ( (Nil!22760) (Cons!22759 (h!23968 (_ BitVec 64)) (t!32085 List!22763)) )
))
(declare-fun arrayNoDuplicates!0 (array!67538 (_ BitVec 32) List!22763) Bool)

(assert (=> b!1063690 (= res!710265 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22760))))

(declare-fun b!1063691 () Bool)

(declare-fun res!710262 () Bool)

(assert (=> b!1063691 (=> (not res!710262) (not e!606169))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1063691 (= res!710262 (and (= (size!33006 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33007 _keys!1163) (size!33006 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1063692 () Bool)

(declare-fun e!606168 () Bool)

(declare-fun tp_is_empty!25281 () Bool)

(assert (=> b!1063692 (= e!606168 tp_is_empty!25281)))

(declare-fun b!1063693 () Bool)

(declare-fun e!606166 () Bool)

(assert (=> b!1063693 (= e!606166 (and e!606168 mapRes!39601))))

(declare-fun condMapEmpty!39601 () Bool)

(declare-fun mapDefault!39601 () ValueCell!11937)

(assert (=> b!1063693 (= condMapEmpty!39601 (= (arr!32469 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11937)) mapDefault!39601)))))

(declare-fun mapIsEmpty!39601 () Bool)

(assert (=> mapIsEmpty!39601 mapRes!39601))

(declare-fun res!710264 () Bool)

(assert (=> start!94092 (=> (not res!710264) (not e!606169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94092 (= res!710264 (validMask!0 mask!1515))))

(assert (=> start!94092 e!606169))

(assert (=> start!94092 true))

(assert (=> start!94092 tp_is_empty!25281))

(declare-fun array_inv!24986 (array!67536) Bool)

(assert (=> start!94092 (and (array_inv!24986 _values!955) e!606166)))

(assert (=> start!94092 tp!75845))

(declare-fun array_inv!24987 (array!67538) Bool)

(assert (=> start!94092 (array_inv!24987 _keys!1163)))

(declare-fun b!1063689 () Bool)

(assert (=> b!1063689 (= e!606169 (not true))))

(declare-datatypes ((tuple2!16160 0))(
  ( (tuple2!16161 (_1!8090 (_ BitVec 64)) (_2!8090 V!38843)) )
))
(declare-datatypes ((List!22764 0))(
  ( (Nil!22761) (Cons!22760 (h!23969 tuple2!16160) (t!32086 List!22764)) )
))
(declare-datatypes ((ListLongMap!14141 0))(
  ( (ListLongMap!14142 (toList!7086 List!22764)) )
))
(declare-fun lt!468869 () ListLongMap!14141)

(declare-fun lt!468867 () ListLongMap!14141)

(assert (=> b!1063689 (= lt!468869 lt!468867)))

(declare-fun zeroValueBefore!47 () V!38843)

(declare-datatypes ((Unit!34839 0))(
  ( (Unit!34840) )
))
(declare-fun lt!468868 () Unit!34839)

(declare-fun minValue!907 () V!38843)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38843)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!679 (array!67538 array!67536 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38843 V!38843 V!38843 V!38843 (_ BitVec 32) Int) Unit!34839)

(assert (=> b!1063689 (= lt!468868 (lemmaNoChangeToArrayThenSameMapNoExtras!679 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3640 (array!67538 array!67536 (_ BitVec 32) (_ BitVec 32) V!38843 V!38843 (_ BitVec 32) Int) ListLongMap!14141)

(assert (=> b!1063689 (= lt!468867 (getCurrentListMapNoExtraKeys!3640 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063689 (= lt!468869 (getCurrentListMapNoExtraKeys!3640 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063694 () Bool)

(assert (=> b!1063694 (= e!606170 tp_is_empty!25281)))

(declare-fun b!1063695 () Bool)

(declare-fun res!710263 () Bool)

(assert (=> b!1063695 (=> (not res!710263) (not e!606169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67538 (_ BitVec 32)) Bool)

(assert (=> b!1063695 (= res!710263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!94092 res!710264) b!1063691))

(assert (= (and b!1063691 res!710262) b!1063695))

(assert (= (and b!1063695 res!710263) b!1063690))

(assert (= (and b!1063690 res!710265) b!1063689))

(assert (= (and b!1063693 condMapEmpty!39601) mapIsEmpty!39601))

(assert (= (and b!1063693 (not condMapEmpty!39601)) mapNonEmpty!39601))

(get-info :version)

(assert (= (and mapNonEmpty!39601 ((_ is ValueCellFull!11937) mapValue!39601)) b!1063694))

(assert (= (and b!1063693 ((_ is ValueCellFull!11937) mapDefault!39601)) b!1063692))

(assert (= start!94092 b!1063693))

(declare-fun m!982481 () Bool)

(assert (=> b!1063689 m!982481))

(declare-fun m!982483 () Bool)

(assert (=> b!1063689 m!982483))

(declare-fun m!982485 () Bool)

(assert (=> b!1063689 m!982485))

(declare-fun m!982487 () Bool)

(assert (=> mapNonEmpty!39601 m!982487))

(declare-fun m!982489 () Bool)

(assert (=> b!1063695 m!982489))

(declare-fun m!982491 () Bool)

(assert (=> start!94092 m!982491))

(declare-fun m!982493 () Bool)

(assert (=> start!94092 m!982493))

(declare-fun m!982495 () Bool)

(assert (=> start!94092 m!982495))

(declare-fun m!982497 () Bool)

(assert (=> b!1063690 m!982497))

(check-sat tp_is_empty!25281 b_and!34231 (not b!1063689) (not start!94092) (not b_next!21471) (not mapNonEmpty!39601) (not b!1063695) (not b!1063690))
(check-sat b_and!34231 (not b_next!21471))
