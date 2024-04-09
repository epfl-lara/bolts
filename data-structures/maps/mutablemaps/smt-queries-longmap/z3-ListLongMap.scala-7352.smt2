; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93854 () Bool)

(assert start!93854)

(declare-fun b_free!21291 () Bool)

(declare-fun b_next!21291 () Bool)

(assert (=> start!93854 (= b_free!21291 (not b_next!21291))))

(declare-fun tp!75297 () Bool)

(declare-fun b_and!34023 () Bool)

(assert (=> start!93854 (= tp!75297 b_and!34023)))

(declare-fun res!708698 () Bool)

(declare-fun e!604232 () Bool)

(assert (=> start!93854 (=> (not res!708698) (not e!604232))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93854 (= res!708698 (validMask!0 mask!1515))))

(assert (=> start!93854 e!604232))

(assert (=> start!93854 true))

(declare-fun tp_is_empty!25101 () Bool)

(assert (=> start!93854 tp_is_empty!25101))

(declare-datatypes ((V!38603 0))(
  ( (V!38604 (val!12601 Int)) )
))
(declare-datatypes ((ValueCell!11847 0))(
  ( (ValueCellFull!11847 (v!15212 V!38603)) (EmptyCell!11847) )
))
(declare-datatypes ((array!67192 0))(
  ( (array!67193 (arr!32300 (Array (_ BitVec 32) ValueCell!11847)) (size!32837 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67192)

(declare-fun e!604231 () Bool)

(declare-fun array_inv!24870 (array!67192) Bool)

(assert (=> start!93854 (and (array_inv!24870 _values!955) e!604231)))

(assert (=> start!93854 tp!75297))

(declare-datatypes ((array!67194 0))(
  ( (array!67195 (arr!32301 (Array (_ BitVec 32) (_ BitVec 64))) (size!32838 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67194)

(declare-fun array_inv!24871 (array!67194) Bool)

(assert (=> start!93854 (array_inv!24871 _keys!1163)))

(declare-fun mapIsEmpty!39322 () Bool)

(declare-fun mapRes!39322 () Bool)

(assert (=> mapIsEmpty!39322 mapRes!39322))

(declare-fun b!1061067 () Bool)

(declare-fun e!604229 () Bool)

(assert (=> b!1061067 (= e!604229 tp_is_empty!25101)))

(declare-fun b!1061068 () Bool)

(assert (=> b!1061068 (= e!604232 false)))

(declare-fun minValue!907 () V!38603)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38603)

(declare-datatypes ((tuple2!16022 0))(
  ( (tuple2!16023 (_1!8021 (_ BitVec 64)) (_2!8021 V!38603)) )
))
(declare-datatypes ((List!22635 0))(
  ( (Nil!22632) (Cons!22631 (h!23840 tuple2!16022) (t!31951 List!22635)) )
))
(declare-datatypes ((ListLongMap!14003 0))(
  ( (ListLongMap!14004 (toList!7017 List!22635)) )
))
(declare-fun lt!467450 () ListLongMap!14003)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3581 (array!67194 array!67192 (_ BitVec 32) (_ BitVec 32) V!38603 V!38603 (_ BitVec 32) Int) ListLongMap!14003)

(assert (=> b!1061068 (= lt!467450 (getCurrentListMapNoExtraKeys!3581 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38603)

(declare-fun lt!467449 () ListLongMap!14003)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1061068 (= lt!467449 (getCurrentListMapNoExtraKeys!3581 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061069 () Bool)

(declare-fun e!604230 () Bool)

(assert (=> b!1061069 (= e!604230 tp_is_empty!25101)))

(declare-fun mapNonEmpty!39322 () Bool)

(declare-fun tp!75296 () Bool)

(assert (=> mapNonEmpty!39322 (= mapRes!39322 (and tp!75296 e!604230))))

(declare-fun mapValue!39322 () ValueCell!11847)

(declare-fun mapKey!39322 () (_ BitVec 32))

(declare-fun mapRest!39322 () (Array (_ BitVec 32) ValueCell!11847))

(assert (=> mapNonEmpty!39322 (= (arr!32300 _values!955) (store mapRest!39322 mapKey!39322 mapValue!39322))))

(declare-fun b!1061070 () Bool)

(declare-fun res!708696 () Bool)

(assert (=> b!1061070 (=> (not res!708696) (not e!604232))))

(assert (=> b!1061070 (= res!708696 (and (= (size!32837 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32838 _keys!1163) (size!32837 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061071 () Bool)

(declare-fun res!708699 () Bool)

(assert (=> b!1061071 (=> (not res!708699) (not e!604232))))

(declare-datatypes ((List!22636 0))(
  ( (Nil!22633) (Cons!22632 (h!23841 (_ BitVec 64)) (t!31952 List!22636)) )
))
(declare-fun arrayNoDuplicates!0 (array!67194 (_ BitVec 32) List!22636) Bool)

(assert (=> b!1061071 (= res!708699 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22633))))

(declare-fun b!1061072 () Bool)

(assert (=> b!1061072 (= e!604231 (and e!604229 mapRes!39322))))

(declare-fun condMapEmpty!39322 () Bool)

(declare-fun mapDefault!39322 () ValueCell!11847)

(assert (=> b!1061072 (= condMapEmpty!39322 (= (arr!32300 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11847)) mapDefault!39322)))))

(declare-fun b!1061073 () Bool)

(declare-fun res!708697 () Bool)

(assert (=> b!1061073 (=> (not res!708697) (not e!604232))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67194 (_ BitVec 32)) Bool)

(assert (=> b!1061073 (= res!708697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!93854 res!708698) b!1061070))

(assert (= (and b!1061070 res!708696) b!1061073))

(assert (= (and b!1061073 res!708697) b!1061071))

(assert (= (and b!1061071 res!708699) b!1061068))

(assert (= (and b!1061072 condMapEmpty!39322) mapIsEmpty!39322))

(assert (= (and b!1061072 (not condMapEmpty!39322)) mapNonEmpty!39322))

(get-info :version)

(assert (= (and mapNonEmpty!39322 ((_ is ValueCellFull!11847) mapValue!39322)) b!1061069))

(assert (= (and b!1061072 ((_ is ValueCellFull!11847) mapDefault!39322)) b!1061067))

(assert (= start!93854 b!1061072))

(declare-fun m!980109 () Bool)

(assert (=> start!93854 m!980109))

(declare-fun m!980111 () Bool)

(assert (=> start!93854 m!980111))

(declare-fun m!980113 () Bool)

(assert (=> start!93854 m!980113))

(declare-fun m!980115 () Bool)

(assert (=> b!1061071 m!980115))

(declare-fun m!980117 () Bool)

(assert (=> b!1061068 m!980117))

(declare-fun m!980119 () Bool)

(assert (=> b!1061068 m!980119))

(declare-fun m!980121 () Bool)

(assert (=> mapNonEmpty!39322 m!980121))

(declare-fun m!980123 () Bool)

(assert (=> b!1061073 m!980123))

(check-sat tp_is_empty!25101 (not b!1061071) (not b!1061073) b_and!34023 (not mapNonEmpty!39322) (not b_next!21291) (not start!93854) (not b!1061068))
(check-sat b_and!34023 (not b_next!21291))
