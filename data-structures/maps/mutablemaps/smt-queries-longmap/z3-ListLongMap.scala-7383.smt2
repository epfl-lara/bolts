; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94098 () Bool)

(assert start!94098)

(declare-fun b_free!21477 () Bool)

(declare-fun b_next!21477 () Bool)

(assert (=> start!94098 (= b_free!21477 (not b_next!21477))))

(declare-fun tp!75863 () Bool)

(declare-fun b_and!34237 () Bool)

(assert (=> start!94098 (= tp!75863 b_and!34237)))

(declare-fun b!1063752 () Bool)

(declare-fun e!606213 () Bool)

(declare-fun tp_is_empty!25287 () Bool)

(assert (=> b!1063752 (= e!606213 tp_is_empty!25287)))

(declare-fun b!1063753 () Bool)

(declare-fun res!710298 () Bool)

(declare-fun e!606212 () Bool)

(assert (=> b!1063753 (=> (not res!710298) (not e!606212))))

(declare-datatypes ((array!67548 0))(
  ( (array!67549 (arr!32475 (Array (_ BitVec 32) (_ BitVec 64))) (size!33012 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67548)

(declare-datatypes ((List!22766 0))(
  ( (Nil!22763) (Cons!22762 (h!23971 (_ BitVec 64)) (t!32088 List!22766)) )
))
(declare-fun arrayNoDuplicates!0 (array!67548 (_ BitVec 32) List!22766) Bool)

(assert (=> b!1063753 (= res!710298 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22763))))

(declare-fun res!710301 () Bool)

(assert (=> start!94098 (=> (not res!710301) (not e!606212))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94098 (= res!710301 (validMask!0 mask!1515))))

(assert (=> start!94098 e!606212))

(assert (=> start!94098 true))

(assert (=> start!94098 tp_is_empty!25287))

(declare-datatypes ((V!38851 0))(
  ( (V!38852 (val!12694 Int)) )
))
(declare-datatypes ((ValueCell!11940 0))(
  ( (ValueCellFull!11940 (v!15307 V!38851)) (EmptyCell!11940) )
))
(declare-datatypes ((array!67550 0))(
  ( (array!67551 (arr!32476 (Array (_ BitVec 32) ValueCell!11940)) (size!33013 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67550)

(declare-fun e!606211 () Bool)

(declare-fun array_inv!24988 (array!67550) Bool)

(assert (=> start!94098 (and (array_inv!24988 _values!955) e!606211)))

(assert (=> start!94098 tp!75863))

(declare-fun array_inv!24989 (array!67548) Bool)

(assert (=> start!94098 (array_inv!24989 _keys!1163)))

(declare-fun mapIsEmpty!39610 () Bool)

(declare-fun mapRes!39610 () Bool)

(assert (=> mapIsEmpty!39610 mapRes!39610))

(declare-fun b!1063754 () Bool)

(declare-fun e!606215 () Bool)

(assert (=> b!1063754 (= e!606211 (and e!606215 mapRes!39610))))

(declare-fun condMapEmpty!39610 () Bool)

(declare-fun mapDefault!39610 () ValueCell!11940)

(assert (=> b!1063754 (= condMapEmpty!39610 (= (arr!32476 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11940)) mapDefault!39610)))))

(declare-fun mapNonEmpty!39610 () Bool)

(declare-fun tp!75864 () Bool)

(assert (=> mapNonEmpty!39610 (= mapRes!39610 (and tp!75864 e!606213))))

(declare-fun mapValue!39610 () ValueCell!11940)

(declare-fun mapKey!39610 () (_ BitVec 32))

(declare-fun mapRest!39610 () (Array (_ BitVec 32) ValueCell!11940))

(assert (=> mapNonEmpty!39610 (= (arr!32476 _values!955) (store mapRest!39610 mapKey!39610 mapValue!39610))))

(declare-fun b!1063755 () Bool)

(assert (=> b!1063755 (= e!606215 tp_is_empty!25287)))

(declare-fun b!1063756 () Bool)

(declare-fun res!710299 () Bool)

(assert (=> b!1063756 (=> (not res!710299) (not e!606212))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67548 (_ BitVec 32)) Bool)

(assert (=> b!1063756 (= res!710299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1063757 () Bool)

(assert (=> b!1063757 (= e!606212 (not true))))

(declare-datatypes ((tuple2!16162 0))(
  ( (tuple2!16163 (_1!8091 (_ BitVec 64)) (_2!8091 V!38851)) )
))
(declare-datatypes ((List!22767 0))(
  ( (Nil!22764) (Cons!22763 (h!23972 tuple2!16162) (t!32089 List!22767)) )
))
(declare-datatypes ((ListLongMap!14143 0))(
  ( (ListLongMap!14144 (toList!7087 List!22767)) )
))
(declare-fun lt!468895 () ListLongMap!14143)

(declare-fun lt!468894 () ListLongMap!14143)

(assert (=> b!1063757 (= lt!468895 lt!468894)))

(declare-fun zeroValueBefore!47 () V!38851)

(declare-fun minValue!907 () V!38851)

(declare-datatypes ((Unit!34841 0))(
  ( (Unit!34842) )
))
(declare-fun lt!468896 () Unit!34841)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38851)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!680 (array!67548 array!67550 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38851 V!38851 V!38851 V!38851 (_ BitVec 32) Int) Unit!34841)

(assert (=> b!1063757 (= lt!468896 (lemmaNoChangeToArrayThenSameMapNoExtras!680 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3641 (array!67548 array!67550 (_ BitVec 32) (_ BitVec 32) V!38851 V!38851 (_ BitVec 32) Int) ListLongMap!14143)

(assert (=> b!1063757 (= lt!468894 (getCurrentListMapNoExtraKeys!3641 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063757 (= lt!468895 (getCurrentListMapNoExtraKeys!3641 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063758 () Bool)

(declare-fun res!710300 () Bool)

(assert (=> b!1063758 (=> (not res!710300) (not e!606212))))

(assert (=> b!1063758 (= res!710300 (and (= (size!33013 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33012 _keys!1163) (size!33013 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!94098 res!710301) b!1063758))

(assert (= (and b!1063758 res!710300) b!1063756))

(assert (= (and b!1063756 res!710299) b!1063753))

(assert (= (and b!1063753 res!710298) b!1063757))

(assert (= (and b!1063754 condMapEmpty!39610) mapIsEmpty!39610))

(assert (= (and b!1063754 (not condMapEmpty!39610)) mapNonEmpty!39610))

(get-info :version)

(assert (= (and mapNonEmpty!39610 ((_ is ValueCellFull!11940) mapValue!39610)) b!1063752))

(assert (= (and b!1063754 ((_ is ValueCellFull!11940) mapDefault!39610)) b!1063755))

(assert (= start!94098 b!1063754))

(declare-fun m!982535 () Bool)

(assert (=> b!1063757 m!982535))

(declare-fun m!982537 () Bool)

(assert (=> b!1063757 m!982537))

(declare-fun m!982539 () Bool)

(assert (=> b!1063757 m!982539))

(declare-fun m!982541 () Bool)

(assert (=> start!94098 m!982541))

(declare-fun m!982543 () Bool)

(assert (=> start!94098 m!982543))

(declare-fun m!982545 () Bool)

(assert (=> start!94098 m!982545))

(declare-fun m!982547 () Bool)

(assert (=> b!1063756 m!982547))

(declare-fun m!982549 () Bool)

(assert (=> mapNonEmpty!39610 m!982549))

(declare-fun m!982551 () Bool)

(assert (=> b!1063753 m!982551))

(check-sat (not b!1063757) (not b!1063753) tp_is_empty!25287 (not start!94098) (not b!1063756) b_and!34237 (not mapNonEmpty!39610) (not b_next!21477))
(check-sat b_and!34237 (not b_next!21477))
