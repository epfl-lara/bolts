; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93836 () Bool)

(assert start!93836)

(declare-fun b_free!21273 () Bool)

(declare-fun b_next!21273 () Bool)

(assert (=> start!93836 (= b_free!21273 (not b_next!21273))))

(declare-fun tp!75242 () Bool)

(declare-fun b_and!34005 () Bool)

(assert (=> start!93836 (= tp!75242 b_and!34005)))

(declare-fun res!708590 () Bool)

(declare-fun e!604095 () Bool)

(assert (=> start!93836 (=> (not res!708590) (not e!604095))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93836 (= res!708590 (validMask!0 mask!1515))))

(assert (=> start!93836 e!604095))

(assert (=> start!93836 true))

(declare-fun tp_is_empty!25083 () Bool)

(assert (=> start!93836 tp_is_empty!25083))

(declare-datatypes ((V!38579 0))(
  ( (V!38580 (val!12592 Int)) )
))
(declare-datatypes ((ValueCell!11838 0))(
  ( (ValueCellFull!11838 (v!15203 V!38579)) (EmptyCell!11838) )
))
(declare-datatypes ((array!67160 0))(
  ( (array!67161 (arr!32284 (Array (_ BitVec 32) ValueCell!11838)) (size!32821 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67160)

(declare-fun e!604093 () Bool)

(declare-fun array_inv!24858 (array!67160) Bool)

(assert (=> start!93836 (and (array_inv!24858 _values!955) e!604093)))

(assert (=> start!93836 tp!75242))

(declare-datatypes ((array!67162 0))(
  ( (array!67163 (arr!32285 (Array (_ BitVec 32) (_ BitVec 64))) (size!32822 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67162)

(declare-fun array_inv!24859 (array!67162) Bool)

(assert (=> start!93836 (array_inv!24859 _keys!1163)))

(declare-fun b!1060878 () Bool)

(declare-fun e!604097 () Bool)

(assert (=> b!1060878 (= e!604097 tp_is_empty!25083)))

(declare-fun b!1060879 () Bool)

(declare-fun res!708591 () Bool)

(assert (=> b!1060879 (=> (not res!708591) (not e!604095))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67162 (_ BitVec 32)) Bool)

(assert (=> b!1060879 (= res!708591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060880 () Bool)

(declare-fun e!604096 () Bool)

(assert (=> b!1060880 (= e!604096 tp_is_empty!25083)))

(declare-fun mapIsEmpty!39295 () Bool)

(declare-fun mapRes!39295 () Bool)

(assert (=> mapIsEmpty!39295 mapRes!39295))

(declare-fun b!1060881 () Bool)

(assert (=> b!1060881 (= e!604093 (and e!604096 mapRes!39295))))

(declare-fun condMapEmpty!39295 () Bool)

(declare-fun mapDefault!39295 () ValueCell!11838)

(assert (=> b!1060881 (= condMapEmpty!39295 (= (arr!32284 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11838)) mapDefault!39295)))))

(declare-fun b!1060882 () Bool)

(assert (=> b!1060882 (= e!604095 false)))

(declare-fun minValue!907 () V!38579)

(declare-datatypes ((tuple2!16012 0))(
  ( (tuple2!16013 (_1!8016 (_ BitVec 64)) (_2!8016 V!38579)) )
))
(declare-datatypes ((List!22624 0))(
  ( (Nil!22621) (Cons!22620 (h!23829 tuple2!16012) (t!31940 List!22624)) )
))
(declare-datatypes ((ListLongMap!13993 0))(
  ( (ListLongMap!13994 (toList!7012 List!22624)) )
))
(declare-fun lt!467396 () ListLongMap!13993)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38579)

(declare-fun getCurrentListMapNoExtraKeys!3576 (array!67162 array!67160 (_ BitVec 32) (_ BitVec 32) V!38579 V!38579 (_ BitVec 32) Int) ListLongMap!13993)

(assert (=> b!1060882 (= lt!467396 (getCurrentListMapNoExtraKeys!3576 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!467395 () ListLongMap!13993)

(declare-fun zeroValueBefore!47 () V!38579)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060882 (= lt!467395 (getCurrentListMapNoExtraKeys!3576 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1060883 () Bool)

(declare-fun res!708588 () Bool)

(assert (=> b!1060883 (=> (not res!708588) (not e!604095))))

(assert (=> b!1060883 (= res!708588 (and (= (size!32821 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32822 _keys!1163) (size!32821 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39295 () Bool)

(declare-fun tp!75243 () Bool)

(assert (=> mapNonEmpty!39295 (= mapRes!39295 (and tp!75243 e!604097))))

(declare-fun mapRest!39295 () (Array (_ BitVec 32) ValueCell!11838))

(declare-fun mapKey!39295 () (_ BitVec 32))

(declare-fun mapValue!39295 () ValueCell!11838)

(assert (=> mapNonEmpty!39295 (= (arr!32284 _values!955) (store mapRest!39295 mapKey!39295 mapValue!39295))))

(declare-fun b!1060884 () Bool)

(declare-fun res!708589 () Bool)

(assert (=> b!1060884 (=> (not res!708589) (not e!604095))))

(declare-datatypes ((List!22625 0))(
  ( (Nil!22622) (Cons!22621 (h!23830 (_ BitVec 64)) (t!31941 List!22625)) )
))
(declare-fun arrayNoDuplicates!0 (array!67162 (_ BitVec 32) List!22625) Bool)

(assert (=> b!1060884 (= res!708589 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22622))))

(assert (= (and start!93836 res!708590) b!1060883))

(assert (= (and b!1060883 res!708588) b!1060879))

(assert (= (and b!1060879 res!708591) b!1060884))

(assert (= (and b!1060884 res!708589) b!1060882))

(assert (= (and b!1060881 condMapEmpty!39295) mapIsEmpty!39295))

(assert (= (and b!1060881 (not condMapEmpty!39295)) mapNonEmpty!39295))

(get-info :version)

(assert (= (and mapNonEmpty!39295 ((_ is ValueCellFull!11838) mapValue!39295)) b!1060878))

(assert (= (and b!1060881 ((_ is ValueCellFull!11838) mapDefault!39295)) b!1060880))

(assert (= start!93836 b!1060881))

(declare-fun m!979965 () Bool)

(assert (=> start!93836 m!979965))

(declare-fun m!979967 () Bool)

(assert (=> start!93836 m!979967))

(declare-fun m!979969 () Bool)

(assert (=> start!93836 m!979969))

(declare-fun m!979971 () Bool)

(assert (=> mapNonEmpty!39295 m!979971))

(declare-fun m!979973 () Bool)

(assert (=> b!1060879 m!979973))

(declare-fun m!979975 () Bool)

(assert (=> b!1060884 m!979975))

(declare-fun m!979977 () Bool)

(assert (=> b!1060882 m!979977))

(declare-fun m!979979 () Bool)

(assert (=> b!1060882 m!979979))

(check-sat (not b!1060879) (not b_next!21273) tp_is_empty!25083 b_and!34005 (not start!93836) (not b!1060884) (not b!1060882) (not mapNonEmpty!39295))
(check-sat b_and!34005 (not b_next!21273))
