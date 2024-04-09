; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93896 () Bool)

(assert start!93896)

(declare-fun b_free!21333 () Bool)

(declare-fun b_next!21333 () Bool)

(assert (=> start!93896 (= b_free!21333 (not b_next!21333))))

(declare-fun tp!75423 () Bool)

(declare-fun b_and!34065 () Bool)

(assert (=> start!93896 (= tp!75423 b_and!34065)))

(declare-fun b!1061508 () Bool)

(declare-fun res!708948 () Bool)

(declare-fun e!604546 () Bool)

(assert (=> b!1061508 (=> (not res!708948) (not e!604546))))

(declare-datatypes ((array!67268 0))(
  ( (array!67269 (arr!32338 (Array (_ BitVec 32) (_ BitVec 64))) (size!32875 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67268)

(declare-datatypes ((List!22661 0))(
  ( (Nil!22658) (Cons!22657 (h!23866 (_ BitVec 64)) (t!31977 List!22661)) )
))
(declare-fun arrayNoDuplicates!0 (array!67268 (_ BitVec 32) List!22661) Bool)

(assert (=> b!1061508 (= res!708948 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22658))))

(declare-fun b!1061509 () Bool)

(declare-fun e!604547 () Bool)

(declare-fun tp_is_empty!25143 () Bool)

(assert (=> b!1061509 (= e!604547 tp_is_empty!25143)))

(declare-fun mapIsEmpty!39385 () Bool)

(declare-fun mapRes!39385 () Bool)

(assert (=> mapIsEmpty!39385 mapRes!39385))

(declare-fun b!1061510 () Bool)

(declare-fun e!604545 () Bool)

(assert (=> b!1061510 (= e!604545 tp_is_empty!25143)))

(declare-fun b!1061511 () Bool)

(declare-fun res!708951 () Bool)

(assert (=> b!1061511 (=> (not res!708951) (not e!604546))))

(declare-datatypes ((V!38659 0))(
  ( (V!38660 (val!12622 Int)) )
))
(declare-datatypes ((ValueCell!11868 0))(
  ( (ValueCellFull!11868 (v!15233 V!38659)) (EmptyCell!11868) )
))
(declare-datatypes ((array!67270 0))(
  ( (array!67271 (arr!32339 (Array (_ BitVec 32) ValueCell!11868)) (size!32876 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67270)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1061511 (= res!708951 (and (= (size!32876 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32875 _keys!1163) (size!32876 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061512 () Bool)

(declare-fun e!604544 () Bool)

(assert (=> b!1061512 (= e!604544 (and e!604545 mapRes!39385))))

(declare-fun condMapEmpty!39385 () Bool)

(declare-fun mapDefault!39385 () ValueCell!11868)

(assert (=> b!1061512 (= condMapEmpty!39385 (= (arr!32339 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11868)) mapDefault!39385)))))

(declare-fun mapNonEmpty!39385 () Bool)

(declare-fun tp!75422 () Bool)

(assert (=> mapNonEmpty!39385 (= mapRes!39385 (and tp!75422 e!604547))))

(declare-fun mapValue!39385 () ValueCell!11868)

(declare-fun mapRest!39385 () (Array (_ BitVec 32) ValueCell!11868))

(declare-fun mapKey!39385 () (_ BitVec 32))

(assert (=> mapNonEmpty!39385 (= (arr!32339 _values!955) (store mapRest!39385 mapKey!39385 mapValue!39385))))

(declare-fun res!708949 () Bool)

(assert (=> start!93896 (=> (not res!708949) (not e!604546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93896 (= res!708949 (validMask!0 mask!1515))))

(assert (=> start!93896 e!604546))

(assert (=> start!93896 true))

(assert (=> start!93896 tp_is_empty!25143))

(declare-fun array_inv!24896 (array!67270) Bool)

(assert (=> start!93896 (and (array_inv!24896 _values!955) e!604544)))

(assert (=> start!93896 tp!75423))

(declare-fun array_inv!24897 (array!67268) Bool)

(assert (=> start!93896 (array_inv!24897 _keys!1163)))

(declare-fun b!1061513 () Bool)

(declare-fun res!708950 () Bool)

(assert (=> b!1061513 (=> (not res!708950) (not e!604546))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67268 (_ BitVec 32)) Bool)

(assert (=> b!1061513 (= res!708950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1061514 () Bool)

(assert (=> b!1061514 (= e!604546 (not true))))

(declare-datatypes ((tuple2!16048 0))(
  ( (tuple2!16049 (_1!8034 (_ BitVec 64)) (_2!8034 V!38659)) )
))
(declare-datatypes ((List!22662 0))(
  ( (Nil!22659) (Cons!22658 (h!23867 tuple2!16048) (t!31978 List!22662)) )
))
(declare-datatypes ((ListLongMap!14029 0))(
  ( (ListLongMap!14030 (toList!7030 List!22662)) )
))
(declare-fun lt!467625 () ListLongMap!14029)

(declare-fun lt!467627 () ListLongMap!14029)

(assert (=> b!1061514 (= lt!467625 lt!467627)))

(declare-fun zeroValueBefore!47 () V!38659)

(declare-datatypes ((Unit!34735 0))(
  ( (Unit!34736) )
))
(declare-fun lt!467626 () Unit!34735)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38659)

(declare-fun minValue!907 () V!38659)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!633 (array!67268 array!67270 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38659 V!38659 V!38659 V!38659 (_ BitVec 32) Int) Unit!34735)

(assert (=> b!1061514 (= lt!467626 (lemmaNoChangeToArrayThenSameMapNoExtras!633 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3594 (array!67268 array!67270 (_ BitVec 32) (_ BitVec 32) V!38659 V!38659 (_ BitVec 32) Int) ListLongMap!14029)

(assert (=> b!1061514 (= lt!467627 (getCurrentListMapNoExtraKeys!3594 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061514 (= lt!467625 (getCurrentListMapNoExtraKeys!3594 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!93896 res!708949) b!1061511))

(assert (= (and b!1061511 res!708951) b!1061513))

(assert (= (and b!1061513 res!708950) b!1061508))

(assert (= (and b!1061508 res!708948) b!1061514))

(assert (= (and b!1061512 condMapEmpty!39385) mapIsEmpty!39385))

(assert (= (and b!1061512 (not condMapEmpty!39385)) mapNonEmpty!39385))

(get-info :version)

(assert (= (and mapNonEmpty!39385 ((_ is ValueCellFull!11868) mapValue!39385)) b!1061509))

(assert (= (and b!1061512 ((_ is ValueCellFull!11868) mapDefault!39385)) b!1061510))

(assert (= start!93896 b!1061512))

(declare-fun m!980477 () Bool)

(assert (=> b!1061513 m!980477))

(declare-fun m!980479 () Bool)

(assert (=> b!1061514 m!980479))

(declare-fun m!980481 () Bool)

(assert (=> b!1061514 m!980481))

(declare-fun m!980483 () Bool)

(assert (=> b!1061514 m!980483))

(declare-fun m!980485 () Bool)

(assert (=> start!93896 m!980485))

(declare-fun m!980487 () Bool)

(assert (=> start!93896 m!980487))

(declare-fun m!980489 () Bool)

(assert (=> start!93896 m!980489))

(declare-fun m!980491 () Bool)

(assert (=> b!1061508 m!980491))

(declare-fun m!980493 () Bool)

(assert (=> mapNonEmpty!39385 m!980493))

(check-sat (not b!1061508) (not b!1061513) (not b!1061514) (not mapNonEmpty!39385) (not start!93896) (not b_next!21333) b_and!34065 tp_is_empty!25143)
(check-sat b_and!34065 (not b_next!21333))
