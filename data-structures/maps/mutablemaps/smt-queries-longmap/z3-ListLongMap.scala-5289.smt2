; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70950 () Bool)

(assert start!70950)

(declare-fun b_free!13143 () Bool)

(declare-fun b_next!13143 () Bool)

(assert (=> start!70950 (= b_free!13143 (not b_next!13143))))

(declare-fun tp!46179 () Bool)

(declare-fun b_and!22057 () Bool)

(assert (=> start!70950 (= tp!46179 b_and!22057)))

(declare-fun b!823579 () Bool)

(declare-fun e!458127 () Bool)

(declare-fun e!458128 () Bool)

(declare-fun mapRes!23896 () Bool)

(assert (=> b!823579 (= e!458127 (and e!458128 mapRes!23896))))

(declare-fun condMapEmpty!23896 () Bool)

(declare-datatypes ((V!24805 0))(
  ( (V!24806 (val!7474 Int)) )
))
(declare-datatypes ((ValueCell!7011 0))(
  ( (ValueCellFull!7011 (v!9903 V!24805)) (EmptyCell!7011) )
))
(declare-datatypes ((array!45856 0))(
  ( (array!45857 (arr!21972 (Array (_ BitVec 32) ValueCell!7011)) (size!22393 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45856)

(declare-fun mapDefault!23896 () ValueCell!7011)

(assert (=> b!823579 (= condMapEmpty!23896 (= (arr!21972 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7011)) mapDefault!23896)))))

(declare-fun res!561703 () Bool)

(declare-fun e!458130 () Bool)

(assert (=> start!70950 (=> (not res!561703) (not e!458130))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70950 (= res!561703 (validMask!0 mask!1312))))

(assert (=> start!70950 e!458130))

(declare-fun tp_is_empty!14853 () Bool)

(assert (=> start!70950 tp_is_empty!14853))

(declare-datatypes ((array!45858 0))(
  ( (array!45859 (arr!21973 (Array (_ BitVec 32) (_ BitVec 64))) (size!22394 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45858)

(declare-fun array_inv!17507 (array!45858) Bool)

(assert (=> start!70950 (array_inv!17507 _keys!976)))

(assert (=> start!70950 true))

(declare-fun array_inv!17508 (array!45856) Bool)

(assert (=> start!70950 (and (array_inv!17508 _values!788) e!458127)))

(assert (=> start!70950 tp!46179))

(declare-fun b!823580 () Bool)

(assert (=> b!823580 (= e!458130 (not true))))

(declare-datatypes ((tuple2!9874 0))(
  ( (tuple2!9875 (_1!4947 (_ BitVec 64)) (_2!4947 V!24805)) )
))
(declare-datatypes ((List!15734 0))(
  ( (Nil!15731) (Cons!15730 (h!16859 tuple2!9874) (t!22083 List!15734)) )
))
(declare-datatypes ((ListLongMap!8711 0))(
  ( (ListLongMap!8712 (toList!4371 List!15734)) )
))
(declare-fun lt!371456 () ListLongMap!8711)

(declare-fun lt!371457 () ListLongMap!8711)

(assert (=> b!823580 (= lt!371456 lt!371457)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24805)

(declare-fun minValue!754 () V!24805)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueBefore!34 () V!24805)

(declare-datatypes ((Unit!28188 0))(
  ( (Unit!28189) )
))
(declare-fun lt!371455 () Unit!28188)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!509 (array!45858 array!45856 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24805 V!24805 V!24805 V!24805 (_ BitVec 32) Int) Unit!28188)

(assert (=> b!823580 (= lt!371455 (lemmaNoChangeToArrayThenSameMapNoExtras!509 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2393 (array!45858 array!45856 (_ BitVec 32) (_ BitVec 32) V!24805 V!24805 (_ BitVec 32) Int) ListLongMap!8711)

(assert (=> b!823580 (= lt!371457 (getCurrentListMapNoExtraKeys!2393 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823580 (= lt!371456 (getCurrentListMapNoExtraKeys!2393 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823581 () Bool)

(declare-fun res!561700 () Bool)

(assert (=> b!823581 (=> (not res!561700) (not e!458130))))

(declare-datatypes ((List!15735 0))(
  ( (Nil!15732) (Cons!15731 (h!16860 (_ BitVec 64)) (t!22084 List!15735)) )
))
(declare-fun arrayNoDuplicates!0 (array!45858 (_ BitVec 32) List!15735) Bool)

(assert (=> b!823581 (= res!561700 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15732))))

(declare-fun mapIsEmpty!23896 () Bool)

(assert (=> mapIsEmpty!23896 mapRes!23896))

(declare-fun b!823582 () Bool)

(declare-fun res!561702 () Bool)

(assert (=> b!823582 (=> (not res!561702) (not e!458130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45858 (_ BitVec 32)) Bool)

(assert (=> b!823582 (= res!561702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823583 () Bool)

(assert (=> b!823583 (= e!458128 tp_is_empty!14853)))

(declare-fun mapNonEmpty!23896 () Bool)

(declare-fun tp!46180 () Bool)

(declare-fun e!458126 () Bool)

(assert (=> mapNonEmpty!23896 (= mapRes!23896 (and tp!46180 e!458126))))

(declare-fun mapKey!23896 () (_ BitVec 32))

(declare-fun mapValue!23896 () ValueCell!7011)

(declare-fun mapRest!23896 () (Array (_ BitVec 32) ValueCell!7011))

(assert (=> mapNonEmpty!23896 (= (arr!21972 _values!788) (store mapRest!23896 mapKey!23896 mapValue!23896))))

(declare-fun b!823584 () Bool)

(assert (=> b!823584 (= e!458126 tp_is_empty!14853)))

(declare-fun b!823585 () Bool)

(declare-fun res!561701 () Bool)

(assert (=> b!823585 (=> (not res!561701) (not e!458130))))

(assert (=> b!823585 (= res!561701 (and (= (size!22393 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22394 _keys!976) (size!22393 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!70950 res!561703) b!823585))

(assert (= (and b!823585 res!561701) b!823582))

(assert (= (and b!823582 res!561702) b!823581))

(assert (= (and b!823581 res!561700) b!823580))

(assert (= (and b!823579 condMapEmpty!23896) mapIsEmpty!23896))

(assert (= (and b!823579 (not condMapEmpty!23896)) mapNonEmpty!23896))

(get-info :version)

(assert (= (and mapNonEmpty!23896 ((_ is ValueCellFull!7011) mapValue!23896)) b!823584))

(assert (= (and b!823579 ((_ is ValueCellFull!7011) mapDefault!23896)) b!823583))

(assert (= start!70950 b!823579))

(declare-fun m!765871 () Bool)

(assert (=> b!823580 m!765871))

(declare-fun m!765873 () Bool)

(assert (=> b!823580 m!765873))

(declare-fun m!765875 () Bool)

(assert (=> b!823580 m!765875))

(declare-fun m!765877 () Bool)

(assert (=> start!70950 m!765877))

(declare-fun m!765879 () Bool)

(assert (=> start!70950 m!765879))

(declare-fun m!765881 () Bool)

(assert (=> start!70950 m!765881))

(declare-fun m!765883 () Bool)

(assert (=> b!823581 m!765883))

(declare-fun m!765885 () Bool)

(assert (=> mapNonEmpty!23896 m!765885))

(declare-fun m!765887 () Bool)

(assert (=> b!823582 m!765887))

(check-sat b_and!22057 (not b!823582) (not start!70950) (not b_next!13143) (not b!823580) (not b!823581) (not mapNonEmpty!23896) tp_is_empty!14853)
(check-sat b_and!22057 (not b_next!13143))
