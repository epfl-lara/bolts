; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70974 () Bool)

(assert start!70974)

(declare-fun b_free!13167 () Bool)

(declare-fun b_next!13167 () Bool)

(assert (=> start!70974 (= b_free!13167 (not b_next!13167))))

(declare-fun tp!46251 () Bool)

(declare-fun b_and!22081 () Bool)

(assert (=> start!70974 (= tp!46251 b_and!22081)))

(declare-fun b!823831 () Bool)

(declare-fun res!561844 () Bool)

(declare-fun e!458308 () Bool)

(assert (=> b!823831 (=> (not res!561844) (not e!458308))))

(declare-datatypes ((array!45902 0))(
  ( (array!45903 (arr!21995 (Array (_ BitVec 32) (_ BitVec 64))) (size!22416 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45902)

(declare-datatypes ((List!15751 0))(
  ( (Nil!15748) (Cons!15747 (h!16876 (_ BitVec 64)) (t!22100 List!15751)) )
))
(declare-fun arrayNoDuplicates!0 (array!45902 (_ BitVec 32) List!15751) Bool)

(assert (=> b!823831 (= res!561844 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15748))))

(declare-fun b!823832 () Bool)

(declare-fun res!561845 () Bool)

(assert (=> b!823832 (=> (not res!561845) (not e!458308))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24837 0))(
  ( (V!24838 (val!7486 Int)) )
))
(declare-datatypes ((ValueCell!7023 0))(
  ( (ValueCellFull!7023 (v!9915 V!24837)) (EmptyCell!7023) )
))
(declare-datatypes ((array!45904 0))(
  ( (array!45905 (arr!21996 (Array (_ BitVec 32) ValueCell!7023)) (size!22417 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45904)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823832 (= res!561845 (and (= (size!22417 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22416 _keys!976) (size!22417 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!823833 () Bool)

(declare-fun res!561847 () Bool)

(assert (=> b!823833 (=> (not res!561847) (not e!458308))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45902 (_ BitVec 32)) Bool)

(assert (=> b!823833 (= res!561847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23932 () Bool)

(declare-fun mapRes!23932 () Bool)

(assert (=> mapIsEmpty!23932 mapRes!23932))

(declare-fun b!823834 () Bool)

(assert (=> b!823834 (= e!458308 (not true))))

(declare-datatypes ((tuple2!9892 0))(
  ( (tuple2!9893 (_1!4956 (_ BitVec 64)) (_2!4956 V!24837)) )
))
(declare-datatypes ((List!15752 0))(
  ( (Nil!15749) (Cons!15748 (h!16877 tuple2!9892) (t!22101 List!15752)) )
))
(declare-datatypes ((ListLongMap!8729 0))(
  ( (ListLongMap!8730 (toList!4380 List!15752)) )
))
(declare-fun lt!371564 () ListLongMap!8729)

(declare-fun lt!371563 () ListLongMap!8729)

(assert (=> b!823834 (= lt!371564 lt!371563)))

(declare-fun zeroValueBefore!34 () V!24837)

(declare-fun zeroValueAfter!34 () V!24837)

(declare-fun minValue!754 () V!24837)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28206 0))(
  ( (Unit!28207) )
))
(declare-fun lt!371565 () Unit!28206)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!518 (array!45902 array!45904 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24837 V!24837 V!24837 V!24837 (_ BitVec 32) Int) Unit!28206)

(assert (=> b!823834 (= lt!371565 (lemmaNoChangeToArrayThenSameMapNoExtras!518 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2402 (array!45902 array!45904 (_ BitVec 32) (_ BitVec 32) V!24837 V!24837 (_ BitVec 32) Int) ListLongMap!8729)

(assert (=> b!823834 (= lt!371563 (getCurrentListMapNoExtraKeys!2402 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823834 (= lt!371564 (getCurrentListMapNoExtraKeys!2402 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!561846 () Bool)

(assert (=> start!70974 (=> (not res!561846) (not e!458308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70974 (= res!561846 (validMask!0 mask!1312))))

(assert (=> start!70974 e!458308))

(declare-fun tp_is_empty!14877 () Bool)

(assert (=> start!70974 tp_is_empty!14877))

(declare-fun array_inv!17529 (array!45902) Bool)

(assert (=> start!70974 (array_inv!17529 _keys!976)))

(assert (=> start!70974 true))

(declare-fun e!458309 () Bool)

(declare-fun array_inv!17530 (array!45904) Bool)

(assert (=> start!70974 (and (array_inv!17530 _values!788) e!458309)))

(assert (=> start!70974 tp!46251))

(declare-fun b!823835 () Bool)

(declare-fun e!458310 () Bool)

(assert (=> b!823835 (= e!458309 (and e!458310 mapRes!23932))))

(declare-fun condMapEmpty!23932 () Bool)

(declare-fun mapDefault!23932 () ValueCell!7023)

(assert (=> b!823835 (= condMapEmpty!23932 (= (arr!21996 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7023)) mapDefault!23932)))))

(declare-fun b!823836 () Bool)

(assert (=> b!823836 (= e!458310 tp_is_empty!14877)))

(declare-fun b!823837 () Bool)

(declare-fun e!458306 () Bool)

(assert (=> b!823837 (= e!458306 tp_is_empty!14877)))

(declare-fun mapNonEmpty!23932 () Bool)

(declare-fun tp!46252 () Bool)

(assert (=> mapNonEmpty!23932 (= mapRes!23932 (and tp!46252 e!458306))))

(declare-fun mapRest!23932 () (Array (_ BitVec 32) ValueCell!7023))

(declare-fun mapKey!23932 () (_ BitVec 32))

(declare-fun mapValue!23932 () ValueCell!7023)

(assert (=> mapNonEmpty!23932 (= (arr!21996 _values!788) (store mapRest!23932 mapKey!23932 mapValue!23932))))

(assert (= (and start!70974 res!561846) b!823832))

(assert (= (and b!823832 res!561845) b!823833))

(assert (= (and b!823833 res!561847) b!823831))

(assert (= (and b!823831 res!561844) b!823834))

(assert (= (and b!823835 condMapEmpty!23932) mapIsEmpty!23932))

(assert (= (and b!823835 (not condMapEmpty!23932)) mapNonEmpty!23932))

(get-info :version)

(assert (= (and mapNonEmpty!23932 ((_ is ValueCellFull!7023) mapValue!23932)) b!823837))

(assert (= (and b!823835 ((_ is ValueCellFull!7023) mapDefault!23932)) b!823836))

(assert (= start!70974 b!823835))

(declare-fun m!766087 () Bool)

(assert (=> b!823833 m!766087))

(declare-fun m!766089 () Bool)

(assert (=> b!823834 m!766089))

(declare-fun m!766091 () Bool)

(assert (=> b!823834 m!766091))

(declare-fun m!766093 () Bool)

(assert (=> b!823834 m!766093))

(declare-fun m!766095 () Bool)

(assert (=> start!70974 m!766095))

(declare-fun m!766097 () Bool)

(assert (=> start!70974 m!766097))

(declare-fun m!766099 () Bool)

(assert (=> start!70974 m!766099))

(declare-fun m!766101 () Bool)

(assert (=> b!823831 m!766101))

(declare-fun m!766103 () Bool)

(assert (=> mapNonEmpty!23932 m!766103))

(check-sat (not b!823831) b_and!22081 (not b_next!13167) (not mapNonEmpty!23932) (not start!70974) (not b!823834) (not b!823833) tp_is_empty!14877)
(check-sat b_and!22081 (not b_next!13167))
