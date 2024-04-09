; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93908 () Bool)

(assert start!93908)

(declare-fun b_free!21345 () Bool)

(declare-fun b_next!21345 () Bool)

(assert (=> start!93908 (= b_free!21345 (not b_next!21345))))

(declare-fun tp!75458 () Bool)

(declare-fun b_and!34077 () Bool)

(assert (=> start!93908 (= tp!75458 b_and!34077)))

(declare-fun b!1061634 () Bool)

(declare-fun res!709021 () Bool)

(declare-fun e!604635 () Bool)

(assert (=> b!1061634 (=> (not res!709021) (not e!604635))))

(declare-datatypes ((array!67292 0))(
  ( (array!67293 (arr!32350 (Array (_ BitVec 32) (_ BitVec 64))) (size!32887 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67292)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67292 (_ BitVec 32)) Bool)

(assert (=> b!1061634 (= res!709021 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1061635 () Bool)

(declare-fun e!604637 () Bool)

(declare-fun tp_is_empty!25155 () Bool)

(assert (=> b!1061635 (= e!604637 tp_is_empty!25155)))

(declare-fun b!1061636 () Bool)

(declare-fun res!709020 () Bool)

(assert (=> b!1061636 (=> (not res!709020) (not e!604635))))

(declare-datatypes ((List!22672 0))(
  ( (Nil!22669) (Cons!22668 (h!23877 (_ BitVec 64)) (t!31988 List!22672)) )
))
(declare-fun arrayNoDuplicates!0 (array!67292 (_ BitVec 32) List!22672) Bool)

(assert (=> b!1061636 (= res!709020 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22669))))

(declare-fun b!1061637 () Bool)

(declare-fun e!604633 () Bool)

(declare-fun mapRes!39403 () Bool)

(assert (=> b!1061637 (= e!604633 (and e!604637 mapRes!39403))))

(declare-fun condMapEmpty!39403 () Bool)

(declare-datatypes ((V!38675 0))(
  ( (V!38676 (val!12628 Int)) )
))
(declare-datatypes ((ValueCell!11874 0))(
  ( (ValueCellFull!11874 (v!15239 V!38675)) (EmptyCell!11874) )
))
(declare-datatypes ((array!67294 0))(
  ( (array!67295 (arr!32351 (Array (_ BitVec 32) ValueCell!11874)) (size!32888 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67294)

(declare-fun mapDefault!39403 () ValueCell!11874)

(assert (=> b!1061637 (= condMapEmpty!39403 (= (arr!32351 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11874)) mapDefault!39403)))))

(declare-fun b!1061639 () Bool)

(declare-fun e!604634 () Bool)

(assert (=> b!1061639 (= e!604634 tp_is_empty!25155)))

(declare-fun b!1061640 () Bool)

(declare-fun res!709022 () Bool)

(assert (=> b!1061640 (=> (not res!709022) (not e!604635))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1061640 (= res!709022 (and (= (size!32888 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32887 _keys!1163) (size!32888 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39403 () Bool)

(assert (=> mapIsEmpty!39403 mapRes!39403))

(declare-fun mapNonEmpty!39403 () Bool)

(declare-fun tp!75459 () Bool)

(assert (=> mapNonEmpty!39403 (= mapRes!39403 (and tp!75459 e!604634))))

(declare-fun mapRest!39403 () (Array (_ BitVec 32) ValueCell!11874))

(declare-fun mapKey!39403 () (_ BitVec 32))

(declare-fun mapValue!39403 () ValueCell!11874)

(assert (=> mapNonEmpty!39403 (= (arr!32351 _values!955) (store mapRest!39403 mapKey!39403 mapValue!39403))))

(declare-fun res!709023 () Bool)

(assert (=> start!93908 (=> (not res!709023) (not e!604635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93908 (= res!709023 (validMask!0 mask!1515))))

(assert (=> start!93908 e!604635))

(assert (=> start!93908 true))

(assert (=> start!93908 tp_is_empty!25155))

(declare-fun array_inv!24902 (array!67294) Bool)

(assert (=> start!93908 (and (array_inv!24902 _values!955) e!604633)))

(assert (=> start!93908 tp!75458))

(declare-fun array_inv!24903 (array!67292) Bool)

(assert (=> start!93908 (array_inv!24903 _keys!1163)))

(declare-fun b!1061638 () Bool)

(assert (=> b!1061638 (= e!604635 (not true))))

(declare-datatypes ((tuple2!16058 0))(
  ( (tuple2!16059 (_1!8039 (_ BitVec 64)) (_2!8039 V!38675)) )
))
(declare-datatypes ((List!22673 0))(
  ( (Nil!22670) (Cons!22669 (h!23878 tuple2!16058) (t!31989 List!22673)) )
))
(declare-datatypes ((ListLongMap!14039 0))(
  ( (ListLongMap!14040 (toList!7035 List!22673)) )
))
(declare-fun lt!467679 () ListLongMap!14039)

(declare-fun lt!467681 () ListLongMap!14039)

(assert (=> b!1061638 (= lt!467679 lt!467681)))

(declare-fun zeroValueBefore!47 () V!38675)

(declare-fun minValue!907 () V!38675)

(declare-datatypes ((Unit!34745 0))(
  ( (Unit!34746) )
))
(declare-fun lt!467680 () Unit!34745)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38675)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!638 (array!67292 array!67294 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38675 V!38675 V!38675 V!38675 (_ BitVec 32) Int) Unit!34745)

(assert (=> b!1061638 (= lt!467680 (lemmaNoChangeToArrayThenSameMapNoExtras!638 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3599 (array!67292 array!67294 (_ BitVec 32) (_ BitVec 32) V!38675 V!38675 (_ BitVec 32) Int) ListLongMap!14039)

(assert (=> b!1061638 (= lt!467681 (getCurrentListMapNoExtraKeys!3599 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061638 (= lt!467679 (getCurrentListMapNoExtraKeys!3599 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!93908 res!709023) b!1061640))

(assert (= (and b!1061640 res!709022) b!1061634))

(assert (= (and b!1061634 res!709021) b!1061636))

(assert (= (and b!1061636 res!709020) b!1061638))

(assert (= (and b!1061637 condMapEmpty!39403) mapIsEmpty!39403))

(assert (= (and b!1061637 (not condMapEmpty!39403)) mapNonEmpty!39403))

(get-info :version)

(assert (= (and mapNonEmpty!39403 ((_ is ValueCellFull!11874) mapValue!39403)) b!1061639))

(assert (= (and b!1061637 ((_ is ValueCellFull!11874) mapDefault!39403)) b!1061635))

(assert (= start!93908 b!1061637))

(declare-fun m!980585 () Bool)

(assert (=> b!1061638 m!980585))

(declare-fun m!980587 () Bool)

(assert (=> b!1061638 m!980587))

(declare-fun m!980589 () Bool)

(assert (=> b!1061638 m!980589))

(declare-fun m!980591 () Bool)

(assert (=> start!93908 m!980591))

(declare-fun m!980593 () Bool)

(assert (=> start!93908 m!980593))

(declare-fun m!980595 () Bool)

(assert (=> start!93908 m!980595))

(declare-fun m!980597 () Bool)

(assert (=> b!1061636 m!980597))

(declare-fun m!980599 () Bool)

(assert (=> b!1061634 m!980599))

(declare-fun m!980601 () Bool)

(assert (=> mapNonEmpty!39403 m!980601))

(check-sat tp_is_empty!25155 (not b_next!21345) (not b!1061638) (not mapNonEmpty!39403) (not start!93908) (not b!1061636) (not b!1061634) b_and!34077)
(check-sat b_and!34077 (not b_next!21345))
