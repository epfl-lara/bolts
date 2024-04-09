; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71012 () Bool)

(assert start!71012)

(declare-fun b_free!13191 () Bool)

(declare-fun b_next!13191 () Bool)

(assert (=> start!71012 (= b_free!13191 (not b_next!13191))))

(declare-fun tp!46326 () Bool)

(declare-fun b_and!22113 () Bool)

(assert (=> start!71012 (= tp!46326 b_and!22113)))

(declare-fun b!824173 () Bool)

(declare-fun e!458549 () Bool)

(assert (=> b!824173 (= e!458549 true)))

(declare-datatypes ((V!24869 0))(
  ( (V!24870 (val!7498 Int)) )
))
(declare-fun zeroValueBefore!34 () V!24869)

(declare-datatypes ((array!45950 0))(
  ( (array!45951 (arr!22018 (Array (_ BitVec 32) (_ BitVec 64))) (size!22439 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45950)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24869)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-datatypes ((tuple2!9910 0))(
  ( (tuple2!9911 (_1!4965 (_ BitVec 64)) (_2!4965 V!24869)) )
))
(declare-datatypes ((List!15766 0))(
  ( (Nil!15763) (Cons!15762 (h!16891 tuple2!9910) (t!22117 List!15766)) )
))
(declare-datatypes ((ListLongMap!8747 0))(
  ( (ListLongMap!8748 (toList!4389 List!15766)) )
))
(declare-fun lt!371716 () ListLongMap!8747)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((ValueCell!7035 0))(
  ( (ValueCellFull!7035 (v!9927 V!24869)) (EmptyCell!7035) )
))
(declare-datatypes ((array!45952 0))(
  ( (array!45953 (arr!22019 (Array (_ BitVec 32) ValueCell!7035)) (size!22440 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45952)

(declare-fun getCurrentListMap!2503 (array!45950 array!45952 (_ BitVec 32) (_ BitVec 32) V!24869 V!24869 (_ BitVec 32) Int) ListLongMap!8747)

(assert (=> b!824173 (= lt!371716 (getCurrentListMap!2503 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824174 () Bool)

(declare-fun e!458547 () Bool)

(assert (=> b!824174 (= e!458547 (not e!458549))))

(declare-fun res!562025 () Bool)

(assert (=> b!824174 (=> res!562025 e!458549)))

(assert (=> b!824174 (= res!562025 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!371719 () ListLongMap!8747)

(declare-fun lt!371718 () ListLongMap!8747)

(assert (=> b!824174 (= lt!371719 lt!371718)))

(declare-fun zeroValueAfter!34 () V!24869)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28224 0))(
  ( (Unit!28225) )
))
(declare-fun lt!371717 () Unit!28224)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!527 (array!45950 array!45952 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24869 V!24869 V!24869 V!24869 (_ BitVec 32) Int) Unit!28224)

(assert (=> b!824174 (= lt!371717 (lemmaNoChangeToArrayThenSameMapNoExtras!527 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2411 (array!45950 array!45952 (_ BitVec 32) (_ BitVec 32) V!24869 V!24869 (_ BitVec 32) Int) ListLongMap!8747)

(assert (=> b!824174 (= lt!371718 (getCurrentListMapNoExtraKeys!2411 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824174 (= lt!371719 (getCurrentListMapNoExtraKeys!2411 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824175 () Bool)

(declare-fun e!458548 () Bool)

(declare-fun tp_is_empty!14901 () Bool)

(assert (=> b!824175 (= e!458548 tp_is_empty!14901)))

(declare-fun b!824176 () Bool)

(declare-fun res!562026 () Bool)

(assert (=> b!824176 (=> (not res!562026) (not e!458547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45950 (_ BitVec 32)) Bool)

(assert (=> b!824176 (= res!562026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!562027 () Bool)

(assert (=> start!71012 (=> (not res!562027) (not e!458547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71012 (= res!562027 (validMask!0 mask!1312))))

(assert (=> start!71012 e!458547))

(assert (=> start!71012 tp_is_empty!14901))

(declare-fun array_inv!17547 (array!45950) Bool)

(assert (=> start!71012 (array_inv!17547 _keys!976)))

(assert (=> start!71012 true))

(declare-fun e!458551 () Bool)

(declare-fun array_inv!17548 (array!45952) Bool)

(assert (=> start!71012 (and (array_inv!17548 _values!788) e!458551)))

(assert (=> start!71012 tp!46326))

(declare-fun b!824177 () Bool)

(declare-fun mapRes!23971 () Bool)

(assert (=> b!824177 (= e!458551 (and e!458548 mapRes!23971))))

(declare-fun condMapEmpty!23971 () Bool)

(declare-fun mapDefault!23971 () ValueCell!7035)

(assert (=> b!824177 (= condMapEmpty!23971 (= (arr!22019 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7035)) mapDefault!23971)))))

(declare-fun b!824178 () Bool)

(declare-fun e!458546 () Bool)

(assert (=> b!824178 (= e!458546 tp_is_empty!14901)))

(declare-fun mapNonEmpty!23971 () Bool)

(declare-fun tp!46327 () Bool)

(assert (=> mapNonEmpty!23971 (= mapRes!23971 (and tp!46327 e!458546))))

(declare-fun mapKey!23971 () (_ BitVec 32))

(declare-fun mapValue!23971 () ValueCell!7035)

(declare-fun mapRest!23971 () (Array (_ BitVec 32) ValueCell!7035))

(assert (=> mapNonEmpty!23971 (= (arr!22019 _values!788) (store mapRest!23971 mapKey!23971 mapValue!23971))))

(declare-fun b!824179 () Bool)

(declare-fun res!562028 () Bool)

(assert (=> b!824179 (=> (not res!562028) (not e!458547))))

(declare-datatypes ((List!15767 0))(
  ( (Nil!15764) (Cons!15763 (h!16892 (_ BitVec 64)) (t!22118 List!15767)) )
))
(declare-fun arrayNoDuplicates!0 (array!45950 (_ BitVec 32) List!15767) Bool)

(assert (=> b!824179 (= res!562028 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15764))))

(declare-fun b!824180 () Bool)

(declare-fun res!562024 () Bool)

(assert (=> b!824180 (=> (not res!562024) (not e!458547))))

(assert (=> b!824180 (= res!562024 (and (= (size!22440 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22439 _keys!976) (size!22440 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23971 () Bool)

(assert (=> mapIsEmpty!23971 mapRes!23971))

(assert (= (and start!71012 res!562027) b!824180))

(assert (= (and b!824180 res!562024) b!824176))

(assert (= (and b!824176 res!562026) b!824179))

(assert (= (and b!824179 res!562028) b!824174))

(assert (= (and b!824174 (not res!562025)) b!824173))

(assert (= (and b!824177 condMapEmpty!23971) mapIsEmpty!23971))

(assert (= (and b!824177 (not condMapEmpty!23971)) mapNonEmpty!23971))

(get-info :version)

(assert (= (and mapNonEmpty!23971 ((_ is ValueCellFull!7035) mapValue!23971)) b!824178))

(assert (= (and b!824177 ((_ is ValueCellFull!7035) mapDefault!23971)) b!824175))

(assert (= start!71012 b!824177))

(declare-fun m!766371 () Bool)

(assert (=> b!824174 m!766371))

(declare-fun m!766373 () Bool)

(assert (=> b!824174 m!766373))

(declare-fun m!766375 () Bool)

(assert (=> b!824174 m!766375))

(declare-fun m!766377 () Bool)

(assert (=> start!71012 m!766377))

(declare-fun m!766379 () Bool)

(assert (=> start!71012 m!766379))

(declare-fun m!766381 () Bool)

(assert (=> start!71012 m!766381))

(declare-fun m!766383 () Bool)

(assert (=> mapNonEmpty!23971 m!766383))

(declare-fun m!766385 () Bool)

(assert (=> b!824176 m!766385))

(declare-fun m!766387 () Bool)

(assert (=> b!824173 m!766387))

(declare-fun m!766389 () Bool)

(assert (=> b!824179 m!766389))

(check-sat b_and!22113 tp_is_empty!14901 (not b_next!13191) (not b!824176) (not mapNonEmpty!23971) (not b!824179) (not b!824173) (not b!824174) (not start!71012))
(check-sat b_and!22113 (not b_next!13191))
