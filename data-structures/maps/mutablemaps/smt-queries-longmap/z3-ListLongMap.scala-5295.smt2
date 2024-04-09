; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70986 () Bool)

(assert start!70986)

(declare-fun b_free!13179 () Bool)

(declare-fun b_next!13179 () Bool)

(assert (=> start!70986 (= b_free!13179 (not b_next!13179))))

(declare-fun tp!46288 () Bool)

(declare-fun b_and!22093 () Bool)

(assert (=> start!70986 (= tp!46288 b_and!22093)))

(declare-fun res!561917 () Bool)

(declare-fun e!458398 () Bool)

(assert (=> start!70986 (=> (not res!561917) (not e!458398))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70986 (= res!561917 (validMask!0 mask!1312))))

(assert (=> start!70986 e!458398))

(declare-fun tp_is_empty!14889 () Bool)

(assert (=> start!70986 tp_is_empty!14889))

(declare-datatypes ((array!45924 0))(
  ( (array!45925 (arr!22006 (Array (_ BitVec 32) (_ BitVec 64))) (size!22427 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45924)

(declare-fun array_inv!17535 (array!45924) Bool)

(assert (=> start!70986 (array_inv!17535 _keys!976)))

(assert (=> start!70986 true))

(declare-datatypes ((V!24853 0))(
  ( (V!24854 (val!7492 Int)) )
))
(declare-datatypes ((ValueCell!7029 0))(
  ( (ValueCellFull!7029 (v!9921 V!24853)) (EmptyCell!7029) )
))
(declare-datatypes ((array!45926 0))(
  ( (array!45927 (arr!22007 (Array (_ BitVec 32) ValueCell!7029)) (size!22428 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45926)

(declare-fun e!458400 () Bool)

(declare-fun array_inv!17536 (array!45926) Bool)

(assert (=> start!70986 (and (array_inv!17536 _values!788) e!458400)))

(assert (=> start!70986 tp!46288))

(declare-fun mapIsEmpty!23950 () Bool)

(declare-fun mapRes!23950 () Bool)

(assert (=> mapIsEmpty!23950 mapRes!23950))

(declare-fun b!823957 () Bool)

(declare-fun res!561918 () Bool)

(assert (=> b!823957 (=> (not res!561918) (not e!458398))))

(declare-datatypes ((List!15758 0))(
  ( (Nil!15755) (Cons!15754 (h!16883 (_ BitVec 64)) (t!22107 List!15758)) )
))
(declare-fun arrayNoDuplicates!0 (array!45924 (_ BitVec 32) List!15758) Bool)

(assert (=> b!823957 (= res!561918 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15755))))

(declare-fun b!823958 () Bool)

(declare-fun e!458399 () Bool)

(assert (=> b!823958 (= e!458400 (and e!458399 mapRes!23950))))

(declare-fun condMapEmpty!23950 () Bool)

(declare-fun mapDefault!23950 () ValueCell!7029)

(assert (=> b!823958 (= condMapEmpty!23950 (= (arr!22007 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7029)) mapDefault!23950)))))

(declare-fun b!823959 () Bool)

(declare-fun e!458396 () Bool)

(assert (=> b!823959 (= e!458396 tp_is_empty!14889)))

(declare-fun b!823960 () Bool)

(declare-fun res!561919 () Bool)

(assert (=> b!823960 (=> (not res!561919) (not e!458398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45924 (_ BitVec 32)) Bool)

(assert (=> b!823960 (= res!561919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823961 () Bool)

(declare-fun res!561916 () Bool)

(assert (=> b!823961 (=> (not res!561916) (not e!458398))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823961 (= res!561916 (and (= (size!22428 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22427 _keys!976) (size!22428 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!823962 () Bool)

(assert (=> b!823962 (= e!458399 tp_is_empty!14889)))

(declare-fun mapNonEmpty!23950 () Bool)

(declare-fun tp!46287 () Bool)

(assert (=> mapNonEmpty!23950 (= mapRes!23950 (and tp!46287 e!458396))))

(declare-fun mapKey!23950 () (_ BitVec 32))

(declare-fun mapValue!23950 () ValueCell!7029)

(declare-fun mapRest!23950 () (Array (_ BitVec 32) ValueCell!7029))

(assert (=> mapNonEmpty!23950 (= (arr!22007 _values!788) (store mapRest!23950 mapKey!23950 mapValue!23950))))

(declare-fun b!823963 () Bool)

(assert (=> b!823963 (= e!458398 (not true))))

(declare-datatypes ((tuple2!9900 0))(
  ( (tuple2!9901 (_1!4960 (_ BitVec 64)) (_2!4960 V!24853)) )
))
(declare-datatypes ((List!15759 0))(
  ( (Nil!15756) (Cons!15755 (h!16884 tuple2!9900) (t!22108 List!15759)) )
))
(declare-datatypes ((ListLongMap!8737 0))(
  ( (ListLongMap!8738 (toList!4384 List!15759)) )
))
(declare-fun lt!371618 () ListLongMap!8737)

(declare-fun lt!371619 () ListLongMap!8737)

(assert (=> b!823963 (= lt!371618 lt!371619)))

(declare-fun zeroValueBefore!34 () V!24853)

(declare-fun zeroValueAfter!34 () V!24853)

(declare-fun minValue!754 () V!24853)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28214 0))(
  ( (Unit!28215) )
))
(declare-fun lt!371617 () Unit!28214)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!522 (array!45924 array!45926 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24853 V!24853 V!24853 V!24853 (_ BitVec 32) Int) Unit!28214)

(assert (=> b!823963 (= lt!371617 (lemmaNoChangeToArrayThenSameMapNoExtras!522 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2406 (array!45924 array!45926 (_ BitVec 32) (_ BitVec 32) V!24853 V!24853 (_ BitVec 32) Int) ListLongMap!8737)

(assert (=> b!823963 (= lt!371619 (getCurrentListMapNoExtraKeys!2406 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823963 (= lt!371618 (getCurrentListMapNoExtraKeys!2406 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!70986 res!561917) b!823961))

(assert (= (and b!823961 res!561916) b!823960))

(assert (= (and b!823960 res!561919) b!823957))

(assert (= (and b!823957 res!561918) b!823963))

(assert (= (and b!823958 condMapEmpty!23950) mapIsEmpty!23950))

(assert (= (and b!823958 (not condMapEmpty!23950)) mapNonEmpty!23950))

(get-info :version)

(assert (= (and mapNonEmpty!23950 ((_ is ValueCellFull!7029) mapValue!23950)) b!823959))

(assert (= (and b!823958 ((_ is ValueCellFull!7029) mapDefault!23950)) b!823962))

(assert (= start!70986 b!823958))

(declare-fun m!766195 () Bool)

(assert (=> b!823960 m!766195))

(declare-fun m!766197 () Bool)

(assert (=> b!823963 m!766197))

(declare-fun m!766199 () Bool)

(assert (=> b!823963 m!766199))

(declare-fun m!766201 () Bool)

(assert (=> b!823963 m!766201))

(declare-fun m!766203 () Bool)

(assert (=> b!823957 m!766203))

(declare-fun m!766205 () Bool)

(assert (=> start!70986 m!766205))

(declare-fun m!766207 () Bool)

(assert (=> start!70986 m!766207))

(declare-fun m!766209 () Bool)

(assert (=> start!70986 m!766209))

(declare-fun m!766211 () Bool)

(assert (=> mapNonEmpty!23950 m!766211))

(check-sat (not b!823960) (not b!823957) (not b_next!13179) (not b!823963) (not mapNonEmpty!23950) (not start!70986) b_and!22093 tp_is_empty!14889)
(check-sat b_and!22093 (not b_next!13179))
