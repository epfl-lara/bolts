; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70832 () Bool)

(assert start!70832)

(declare-fun b_free!13065 () Bool)

(declare-fun b_next!13065 () Bool)

(assert (=> start!70832 (= b_free!13065 (not b_next!13065))))

(declare-fun tp!45939 () Bool)

(declare-fun b_and!21955 () Bool)

(assert (=> start!70832 (= tp!45939 b_and!21955)))

(declare-fun b!822295 () Bool)

(declare-fun res!560972 () Bool)

(declare-fun e!457215 () Bool)

(assert (=> b!822295 (=> (not res!560972) (not e!457215))))

(declare-datatypes ((array!45702 0))(
  ( (array!45703 (arr!21897 (Array (_ BitVec 32) (_ BitVec 64))) (size!22318 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45702)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45702 (_ BitVec 32)) Bool)

(assert (=> b!822295 (= res!560972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822296 () Bool)

(declare-fun e!457213 () Bool)

(declare-fun e!457214 () Bool)

(declare-fun mapRes!23773 () Bool)

(assert (=> b!822296 (= e!457213 (and e!457214 mapRes!23773))))

(declare-fun condMapEmpty!23773 () Bool)

(declare-datatypes ((V!24701 0))(
  ( (V!24702 (val!7435 Int)) )
))
(declare-datatypes ((ValueCell!6972 0))(
  ( (ValueCellFull!6972 (v!9862 V!24701)) (EmptyCell!6972) )
))
(declare-datatypes ((array!45704 0))(
  ( (array!45705 (arr!21898 (Array (_ BitVec 32) ValueCell!6972)) (size!22319 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45704)

(declare-fun mapDefault!23773 () ValueCell!6972)

(assert (=> b!822296 (= condMapEmpty!23773 (= (arr!21898 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6972)) mapDefault!23773)))))

(declare-fun b!822297 () Bool)

(declare-fun e!457212 () Bool)

(assert (=> b!822297 (= e!457212 true)))

(declare-datatypes ((tuple2!9812 0))(
  ( (tuple2!9813 (_1!4916 (_ BitVec 64)) (_2!4916 V!24701)) )
))
(declare-datatypes ((List!15672 0))(
  ( (Nil!15669) (Cons!15668 (h!16797 tuple2!9812) (t!22017 List!15672)) )
))
(declare-datatypes ((ListLongMap!8649 0))(
  ( (ListLongMap!8650 (toList!4340 List!15672)) )
))
(declare-fun lt!370079 () ListLongMap!8649)

(declare-fun lt!370073 () ListLongMap!8649)

(declare-fun lt!370081 () tuple2!9812)

(declare-fun +!1843 (ListLongMap!8649 tuple2!9812) ListLongMap!8649)

(assert (=> b!822297 (= lt!370079 (+!1843 lt!370073 lt!370081))))

(declare-fun lt!370080 () ListLongMap!8649)

(declare-fun zeroValueAfter!34 () V!24701)

(declare-fun minValue!754 () V!24701)

(declare-datatypes ((Unit!28122 0))(
  ( (Unit!28123) )
))
(declare-fun lt!370082 () Unit!28122)

(declare-fun addCommutativeForDiffKeys!438 (ListLongMap!8649 (_ BitVec 64) V!24701 (_ BitVec 64) V!24701) Unit!28122)

(assert (=> b!822297 (= lt!370082 (addCommutativeForDiffKeys!438 lt!370080 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370074 () ListLongMap!8649)

(assert (=> b!822297 (= lt!370074 lt!370079)))

(declare-fun lt!370077 () tuple2!9812)

(assert (=> b!822297 (= lt!370079 (+!1843 (+!1843 lt!370080 lt!370081) lt!370077))))

(assert (=> b!822297 (= lt!370081 (tuple2!9813 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370075 () ListLongMap!8649)

(assert (=> b!822297 (= lt!370075 lt!370073)))

(assert (=> b!822297 (= lt!370073 (+!1843 lt!370080 lt!370077))))

(assert (=> b!822297 (= lt!370077 (tuple2!9813 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2473 (array!45702 array!45704 (_ BitVec 32) (_ BitVec 32) V!24701 V!24701 (_ BitVec 32) Int) ListLongMap!8649)

(assert (=> b!822297 (= lt!370074 (getCurrentListMap!2473 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24701)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822297 (= lt!370075 (getCurrentListMap!2473 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822298 () Bool)

(declare-fun tp_is_empty!14775 () Bool)

(assert (=> b!822298 (= e!457214 tp_is_empty!14775)))

(declare-fun mapIsEmpty!23773 () Bool)

(assert (=> mapIsEmpty!23773 mapRes!23773))

(declare-fun b!822299 () Bool)

(declare-fun res!560973 () Bool)

(assert (=> b!822299 (=> (not res!560973) (not e!457215))))

(assert (=> b!822299 (= res!560973 (and (= (size!22319 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22318 _keys!976) (size!22319 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!560974 () Bool)

(assert (=> start!70832 (=> (not res!560974) (not e!457215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70832 (= res!560974 (validMask!0 mask!1312))))

(assert (=> start!70832 e!457215))

(assert (=> start!70832 tp_is_empty!14775))

(declare-fun array_inv!17455 (array!45702) Bool)

(assert (=> start!70832 (array_inv!17455 _keys!976)))

(assert (=> start!70832 true))

(declare-fun array_inv!17456 (array!45704) Bool)

(assert (=> start!70832 (and (array_inv!17456 _values!788) e!457213)))

(assert (=> start!70832 tp!45939))

(declare-fun b!822300 () Bool)

(declare-fun e!457217 () Bool)

(assert (=> b!822300 (= e!457217 tp_is_empty!14775)))

(declare-fun mapNonEmpty!23773 () Bool)

(declare-fun tp!45940 () Bool)

(assert (=> mapNonEmpty!23773 (= mapRes!23773 (and tp!45940 e!457217))))

(declare-fun mapRest!23773 () (Array (_ BitVec 32) ValueCell!6972))

(declare-fun mapKey!23773 () (_ BitVec 32))

(declare-fun mapValue!23773 () ValueCell!6972)

(assert (=> mapNonEmpty!23773 (= (arr!21898 _values!788) (store mapRest!23773 mapKey!23773 mapValue!23773))))

(declare-fun b!822301 () Bool)

(declare-fun res!560971 () Bool)

(assert (=> b!822301 (=> (not res!560971) (not e!457215))))

(declare-datatypes ((List!15673 0))(
  ( (Nil!15670) (Cons!15669 (h!16798 (_ BitVec 64)) (t!22018 List!15673)) )
))
(declare-fun arrayNoDuplicates!0 (array!45702 (_ BitVec 32) List!15673) Bool)

(assert (=> b!822301 (= res!560971 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15670))))

(declare-fun b!822302 () Bool)

(assert (=> b!822302 (= e!457215 (not e!457212))))

(declare-fun res!560975 () Bool)

(assert (=> b!822302 (=> res!560975 e!457212)))

(assert (=> b!822302 (= res!560975 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!370078 () ListLongMap!8649)

(assert (=> b!822302 (= lt!370080 lt!370078)))

(declare-fun lt!370076 () Unit!28122)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!482 (array!45702 array!45704 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24701 V!24701 V!24701 V!24701 (_ BitVec 32) Int) Unit!28122)

(assert (=> b!822302 (= lt!370076 (lemmaNoChangeToArrayThenSameMapNoExtras!482 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2366 (array!45702 array!45704 (_ BitVec 32) (_ BitVec 32) V!24701 V!24701 (_ BitVec 32) Int) ListLongMap!8649)

(assert (=> b!822302 (= lt!370078 (getCurrentListMapNoExtraKeys!2366 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822302 (= lt!370080 (getCurrentListMapNoExtraKeys!2366 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!70832 res!560974) b!822299))

(assert (= (and b!822299 res!560973) b!822295))

(assert (= (and b!822295 res!560972) b!822301))

(assert (= (and b!822301 res!560971) b!822302))

(assert (= (and b!822302 (not res!560975)) b!822297))

(assert (= (and b!822296 condMapEmpty!23773) mapIsEmpty!23773))

(assert (= (and b!822296 (not condMapEmpty!23773)) mapNonEmpty!23773))

(get-info :version)

(assert (= (and mapNonEmpty!23773 ((_ is ValueCellFull!6972) mapValue!23773)) b!822300))

(assert (= (and b!822296 ((_ is ValueCellFull!6972) mapDefault!23773)) b!822298))

(assert (= start!70832 b!822296))

(declare-fun m!764247 () Bool)

(assert (=> mapNonEmpty!23773 m!764247))

(declare-fun m!764249 () Bool)

(assert (=> b!822297 m!764249))

(declare-fun m!764251 () Bool)

(assert (=> b!822297 m!764251))

(declare-fun m!764253 () Bool)

(assert (=> b!822297 m!764253))

(declare-fun m!764255 () Bool)

(assert (=> b!822297 m!764255))

(declare-fun m!764257 () Bool)

(assert (=> b!822297 m!764257))

(declare-fun m!764259 () Bool)

(assert (=> b!822297 m!764259))

(declare-fun m!764261 () Bool)

(assert (=> b!822297 m!764261))

(assert (=> b!822297 m!764257))

(declare-fun m!764263 () Bool)

(assert (=> b!822302 m!764263))

(declare-fun m!764265 () Bool)

(assert (=> b!822302 m!764265))

(declare-fun m!764267 () Bool)

(assert (=> b!822302 m!764267))

(declare-fun m!764269 () Bool)

(assert (=> b!822295 m!764269))

(declare-fun m!764271 () Bool)

(assert (=> start!70832 m!764271))

(declare-fun m!764273 () Bool)

(assert (=> start!70832 m!764273))

(declare-fun m!764275 () Bool)

(assert (=> start!70832 m!764275))

(declare-fun m!764277 () Bool)

(assert (=> b!822301 m!764277))

(check-sat (not b!822297) (not b!822301) (not start!70832) tp_is_empty!14775 (not b!822302) b_and!21955 (not mapNonEmpty!23773) (not b_next!13065) (not b!822295))
(check-sat b_and!21955 (not b_next!13065))
