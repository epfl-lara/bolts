; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93734 () Bool)

(assert start!93734)

(declare-fun b_free!21183 () Bool)

(declare-fun b_next!21183 () Bool)

(assert (=> start!93734 (= b_free!21183 (not b_next!21183))))

(declare-fun tp!74969 () Bool)

(declare-fun b_and!33911 () Bool)

(assert (=> start!93734 (= tp!74969 b_and!33911)))

(declare-fun res!708023 () Bool)

(declare-fun e!603370 () Bool)

(assert (=> start!93734 (=> (not res!708023) (not e!603370))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93734 (= res!708023 (validMask!0 mask!1515))))

(assert (=> start!93734 e!603370))

(assert (=> start!93734 true))

(declare-fun tp_is_empty!24993 () Bool)

(assert (=> start!93734 tp_is_empty!24993))

(declare-datatypes ((V!38459 0))(
  ( (V!38460 (val!12547 Int)) )
))
(declare-datatypes ((ValueCell!11793 0))(
  ( (ValueCellFull!11793 (v!15158 V!38459)) (EmptyCell!11793) )
))
(declare-datatypes ((array!66994 0))(
  ( (array!66995 (arr!32202 (Array (_ BitVec 32) ValueCell!11793)) (size!32739 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66994)

(declare-fun e!603373 () Bool)

(declare-fun array_inv!24812 (array!66994) Bool)

(assert (=> start!93734 (and (array_inv!24812 _values!955) e!603373)))

(assert (=> start!93734 tp!74969))

(declare-datatypes ((array!66996 0))(
  ( (array!66997 (arr!32203 (Array (_ BitVec 32) (_ BitVec 64))) (size!32740 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66996)

(declare-fun array_inv!24813 (array!66996) Bool)

(assert (=> start!93734 (array_inv!24813 _keys!1163)))

(declare-fun b!1059860 () Bool)

(declare-fun res!708022 () Bool)

(assert (=> b!1059860 (=> (not res!708022) (not e!603370))))

(declare-datatypes ((List!22566 0))(
  ( (Nil!22563) (Cons!22562 (h!23771 (_ BitVec 64)) (t!31880 List!22566)) )
))
(declare-fun arrayNoDuplicates!0 (array!66996 (_ BitVec 32) List!22566) Bool)

(assert (=> b!1059860 (= res!708022 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22563))))

(declare-fun b!1059861 () Bool)

(declare-fun e!603374 () Bool)

(declare-fun mapRes!39157 () Bool)

(assert (=> b!1059861 (= e!603373 (and e!603374 mapRes!39157))))

(declare-fun condMapEmpty!39157 () Bool)

(declare-fun mapDefault!39157 () ValueCell!11793)

(assert (=> b!1059861 (= condMapEmpty!39157 (= (arr!32202 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11793)) mapDefault!39157)))))

(declare-fun b!1059862 () Bool)

(declare-fun e!603371 () Bool)

(assert (=> b!1059862 (= e!603371 tp_is_empty!24993)))

(declare-fun b!1059863 () Bool)

(assert (=> b!1059863 (= e!603370 false)))

(declare-datatypes ((tuple2!15952 0))(
  ( (tuple2!15953 (_1!7986 (_ BitVec 64)) (_2!7986 V!38459)) )
))
(declare-datatypes ((List!22567 0))(
  ( (Nil!22564) (Cons!22563 (h!23772 tuple2!15952) (t!31881 List!22567)) )
))
(declare-datatypes ((ListLongMap!13933 0))(
  ( (ListLongMap!13934 (toList!6982 List!22567)) )
))
(declare-fun lt!467171 () ListLongMap!13933)

(declare-fun zeroValueBefore!47 () V!38459)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38459)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3546 (array!66996 array!66994 (_ BitVec 32) (_ BitVec 32) V!38459 V!38459 (_ BitVec 32) Int) ListLongMap!13933)

(assert (=> b!1059863 (= lt!467171 (getCurrentListMapNoExtraKeys!3546 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39157 () Bool)

(declare-fun tp!74970 () Bool)

(assert (=> mapNonEmpty!39157 (= mapRes!39157 (and tp!74970 e!603371))))

(declare-fun mapValue!39157 () ValueCell!11793)

(declare-fun mapRest!39157 () (Array (_ BitVec 32) ValueCell!11793))

(declare-fun mapKey!39157 () (_ BitVec 32))

(assert (=> mapNonEmpty!39157 (= (arr!32202 _values!955) (store mapRest!39157 mapKey!39157 mapValue!39157))))

(declare-fun b!1059864 () Bool)

(declare-fun res!708024 () Bool)

(assert (=> b!1059864 (=> (not res!708024) (not e!603370))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1059864 (= res!708024 (and (= (size!32739 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32740 _keys!1163) (size!32739 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1059865 () Bool)

(declare-fun res!708021 () Bool)

(assert (=> b!1059865 (=> (not res!708021) (not e!603370))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66996 (_ BitVec 32)) Bool)

(assert (=> b!1059865 (= res!708021 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059866 () Bool)

(assert (=> b!1059866 (= e!603374 tp_is_empty!24993)))

(declare-fun mapIsEmpty!39157 () Bool)

(assert (=> mapIsEmpty!39157 mapRes!39157))

(assert (= (and start!93734 res!708023) b!1059864))

(assert (= (and b!1059864 res!708024) b!1059865))

(assert (= (and b!1059865 res!708021) b!1059860))

(assert (= (and b!1059860 res!708022) b!1059863))

(assert (= (and b!1059861 condMapEmpty!39157) mapIsEmpty!39157))

(assert (= (and b!1059861 (not condMapEmpty!39157)) mapNonEmpty!39157))

(get-info :version)

(assert (= (and mapNonEmpty!39157 ((_ is ValueCellFull!11793) mapValue!39157)) b!1059862))

(assert (= (and b!1059861 ((_ is ValueCellFull!11793) mapDefault!39157)) b!1059866))

(assert (= start!93734 b!1059861))

(declare-fun m!979253 () Bool)

(assert (=> mapNonEmpty!39157 m!979253))

(declare-fun m!979255 () Bool)

(assert (=> start!93734 m!979255))

(declare-fun m!979257 () Bool)

(assert (=> start!93734 m!979257))

(declare-fun m!979259 () Bool)

(assert (=> start!93734 m!979259))

(declare-fun m!979261 () Bool)

(assert (=> b!1059865 m!979261))

(declare-fun m!979263 () Bool)

(assert (=> b!1059860 m!979263))

(declare-fun m!979265 () Bool)

(assert (=> b!1059863 m!979265))

(check-sat tp_is_empty!24993 (not b!1059863) (not start!93734) (not mapNonEmpty!39157) (not b!1059860) (not b!1059865) b_and!33911 (not b_next!21183))
(check-sat b_and!33911 (not b_next!21183))
