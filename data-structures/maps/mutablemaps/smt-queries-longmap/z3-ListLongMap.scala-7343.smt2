; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93800 () Bool)

(assert start!93800)

(declare-fun b_free!21237 () Bool)

(declare-fun b_next!21237 () Bool)

(assert (=> start!93800 (= b_free!21237 (not b_next!21237))))

(declare-fun tp!75134 () Bool)

(declare-fun b_and!33969 () Bool)

(assert (=> start!93800 (= tp!75134 b_and!33969)))

(declare-fun mapNonEmpty!39241 () Bool)

(declare-fun mapRes!39241 () Bool)

(declare-fun tp!75135 () Bool)

(declare-fun e!603825 () Bool)

(assert (=> mapNonEmpty!39241 (= mapRes!39241 (and tp!75135 e!603825))))

(declare-fun mapKey!39241 () (_ BitVec 32))

(declare-datatypes ((V!38531 0))(
  ( (V!38532 (val!12574 Int)) )
))
(declare-datatypes ((ValueCell!11820 0))(
  ( (ValueCellFull!11820 (v!15185 V!38531)) (EmptyCell!11820) )
))
(declare-fun mapRest!39241 () (Array (_ BitVec 32) ValueCell!11820))

(declare-datatypes ((array!67090 0))(
  ( (array!67091 (arr!32249 (Array (_ BitVec 32) ValueCell!11820)) (size!32786 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67090)

(declare-fun mapValue!39241 () ValueCell!11820)

(assert (=> mapNonEmpty!39241 (= (arr!32249 _values!955) (store mapRest!39241 mapKey!39241 mapValue!39241))))

(declare-fun mapIsEmpty!39241 () Bool)

(assert (=> mapIsEmpty!39241 mapRes!39241))

(declare-fun b!1060500 () Bool)

(declare-fun res!708375 () Bool)

(declare-fun e!603823 () Bool)

(assert (=> b!1060500 (=> (not res!708375) (not e!603823))))

(declare-datatypes ((array!67092 0))(
  ( (array!67093 (arr!32250 (Array (_ BitVec 32) (_ BitVec 64))) (size!32787 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67092)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67092 (_ BitVec 32)) Bool)

(assert (=> b!1060500 (= res!708375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060501 () Bool)

(declare-fun res!708374 () Bool)

(assert (=> b!1060501 (=> (not res!708374) (not e!603823))))

(declare-datatypes ((List!22598 0))(
  ( (Nil!22595) (Cons!22594 (h!23803 (_ BitVec 64)) (t!31914 List!22598)) )
))
(declare-fun arrayNoDuplicates!0 (array!67092 (_ BitVec 32) List!22598) Bool)

(assert (=> b!1060501 (= res!708374 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22595))))

(declare-fun b!1060502 () Bool)

(assert (=> b!1060502 (= e!603823 false)))

(declare-datatypes ((tuple2!15986 0))(
  ( (tuple2!15987 (_1!8003 (_ BitVec 64)) (_2!8003 V!38531)) )
))
(declare-datatypes ((List!22599 0))(
  ( (Nil!22596) (Cons!22595 (h!23804 tuple2!15986) (t!31915 List!22599)) )
))
(declare-datatypes ((ListLongMap!13967 0))(
  ( (ListLongMap!13968 (toList!6999 List!22599)) )
))
(declare-fun lt!467288 () ListLongMap!13967)

(declare-fun minValue!907 () V!38531)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38531)

(declare-fun getCurrentListMapNoExtraKeys!3563 (array!67092 array!67090 (_ BitVec 32) (_ BitVec 32) V!38531 V!38531 (_ BitVec 32) Int) ListLongMap!13967)

(assert (=> b!1060502 (= lt!467288 (getCurrentListMapNoExtraKeys!3563 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38531)

(declare-fun lt!467287 () ListLongMap!13967)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060502 (= lt!467287 (getCurrentListMapNoExtraKeys!3563 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1060503 () Bool)

(declare-fun tp_is_empty!25047 () Bool)

(assert (=> b!1060503 (= e!603825 tp_is_empty!25047)))

(declare-fun b!1060504 () Bool)

(declare-fun e!603826 () Bool)

(assert (=> b!1060504 (= e!603826 tp_is_empty!25047)))

(declare-fun b!1060505 () Bool)

(declare-fun e!603824 () Bool)

(assert (=> b!1060505 (= e!603824 (and e!603826 mapRes!39241))))

(declare-fun condMapEmpty!39241 () Bool)

(declare-fun mapDefault!39241 () ValueCell!11820)

(assert (=> b!1060505 (= condMapEmpty!39241 (= (arr!32249 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11820)) mapDefault!39241)))))

(declare-fun b!1060506 () Bool)

(declare-fun res!708372 () Bool)

(assert (=> b!1060506 (=> (not res!708372) (not e!603823))))

(assert (=> b!1060506 (= res!708372 (and (= (size!32786 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32787 _keys!1163) (size!32786 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!708373 () Bool)

(assert (=> start!93800 (=> (not res!708373) (not e!603823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93800 (= res!708373 (validMask!0 mask!1515))))

(assert (=> start!93800 e!603823))

(assert (=> start!93800 true))

(assert (=> start!93800 tp_is_empty!25047))

(declare-fun array_inv!24838 (array!67090) Bool)

(assert (=> start!93800 (and (array_inv!24838 _values!955) e!603824)))

(assert (=> start!93800 tp!75134))

(declare-fun array_inv!24839 (array!67092) Bool)

(assert (=> start!93800 (array_inv!24839 _keys!1163)))

(assert (= (and start!93800 res!708373) b!1060506))

(assert (= (and b!1060506 res!708372) b!1060500))

(assert (= (and b!1060500 res!708375) b!1060501))

(assert (= (and b!1060501 res!708374) b!1060502))

(assert (= (and b!1060505 condMapEmpty!39241) mapIsEmpty!39241))

(assert (= (and b!1060505 (not condMapEmpty!39241)) mapNonEmpty!39241))

(get-info :version)

(assert (= (and mapNonEmpty!39241 ((_ is ValueCellFull!11820) mapValue!39241)) b!1060503))

(assert (= (and b!1060505 ((_ is ValueCellFull!11820) mapDefault!39241)) b!1060504))

(assert (= start!93800 b!1060505))

(declare-fun m!979677 () Bool)

(assert (=> b!1060501 m!979677))

(declare-fun m!979679 () Bool)

(assert (=> b!1060500 m!979679))

(declare-fun m!979681 () Bool)

(assert (=> start!93800 m!979681))

(declare-fun m!979683 () Bool)

(assert (=> start!93800 m!979683))

(declare-fun m!979685 () Bool)

(assert (=> start!93800 m!979685))

(declare-fun m!979687 () Bool)

(assert (=> b!1060502 m!979687))

(declare-fun m!979689 () Bool)

(assert (=> b!1060502 m!979689))

(declare-fun m!979691 () Bool)

(assert (=> mapNonEmpty!39241 m!979691))

(check-sat (not b_next!21237) b_and!33969 (not b!1060500) (not b!1060502) (not b!1060501) (not start!93800) tp_is_empty!25047 (not mapNonEmpty!39241))
(check-sat b_and!33969 (not b_next!21237))
