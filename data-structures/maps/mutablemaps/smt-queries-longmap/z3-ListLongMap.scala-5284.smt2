; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70900 () Bool)

(assert start!70900)

(declare-fun b_free!13113 () Bool)

(declare-fun b_next!13113 () Bool)

(assert (=> start!70900 (= b_free!13113 (not b_next!13113))))

(declare-fun tp!46087 () Bool)

(declare-fun b_and!22015 () Bool)

(assert (=> start!70900 (= tp!46087 b_and!22015)))

(declare-fun b!823052 () Bool)

(declare-fun res!561411 () Bool)

(declare-fun e!457758 () Bool)

(assert (=> b!823052 (=> (not res!561411) (not e!457758))))

(declare-datatypes ((array!45800 0))(
  ( (array!45801 (arr!21945 (Array (_ BitVec 32) (_ BitVec 64))) (size!22366 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45800)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45800 (_ BitVec 32)) Bool)

(assert (=> b!823052 (= res!561411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823053 () Bool)

(declare-fun e!457762 () Bool)

(declare-fun e!457761 () Bool)

(declare-fun mapRes!23848 () Bool)

(assert (=> b!823053 (= e!457762 (and e!457761 mapRes!23848))))

(declare-fun condMapEmpty!23848 () Bool)

(declare-datatypes ((V!24765 0))(
  ( (V!24766 (val!7459 Int)) )
))
(declare-datatypes ((ValueCell!6996 0))(
  ( (ValueCellFull!6996 (v!9887 V!24765)) (EmptyCell!6996) )
))
(declare-datatypes ((array!45802 0))(
  ( (array!45803 (arr!21946 (Array (_ BitVec 32) ValueCell!6996)) (size!22367 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45802)

(declare-fun mapDefault!23848 () ValueCell!6996)

(assert (=> b!823053 (= condMapEmpty!23848 (= (arr!21946 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6996)) mapDefault!23848)))))

(declare-fun b!823054 () Bool)

(declare-fun e!457759 () Bool)

(declare-fun tp_is_empty!14823 () Bool)

(assert (=> b!823054 (= e!457759 tp_is_empty!14823)))

(declare-fun mapIsEmpty!23848 () Bool)

(assert (=> mapIsEmpty!23848 mapRes!23848))

(declare-fun b!823055 () Bool)

(declare-fun res!561412 () Bool)

(assert (=> b!823055 (=> (not res!561412) (not e!457758))))

(declare-datatypes ((List!15714 0))(
  ( (Nil!15711) (Cons!15710 (h!16839 (_ BitVec 64)) (t!22061 List!15714)) )
))
(declare-fun arrayNoDuplicates!0 (array!45800 (_ BitVec 32) List!15714) Bool)

(assert (=> b!823055 (= res!561412 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15711))))

(declare-fun b!823056 () Bool)

(declare-fun e!457757 () Bool)

(assert (=> b!823056 (= e!457758 (not e!457757))))

(declare-fun res!561414 () Bool)

(assert (=> b!823056 (=> res!561414 e!457757)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!823056 (= res!561414 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9856 0))(
  ( (tuple2!9857 (_1!4938 (_ BitVec 64)) (_2!4938 V!24765)) )
))
(declare-datatypes ((List!15715 0))(
  ( (Nil!15712) (Cons!15711 (h!16840 tuple2!9856) (t!22062 List!15715)) )
))
(declare-datatypes ((ListLongMap!8693 0))(
  ( (ListLongMap!8694 (toList!4362 List!15715)) )
))
(declare-fun lt!370948 () ListLongMap!8693)

(declare-fun lt!370954 () ListLongMap!8693)

(assert (=> b!823056 (= lt!370948 lt!370954)))

(declare-fun zeroValueAfter!34 () V!24765)

(declare-fun minValue!754 () V!24765)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28168 0))(
  ( (Unit!28169) )
))
(declare-fun lt!370951 () Unit!28168)

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueBefore!34 () V!24765)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!500 (array!45800 array!45802 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24765 V!24765 V!24765 V!24765 (_ BitVec 32) Int) Unit!28168)

(assert (=> b!823056 (= lt!370951 (lemmaNoChangeToArrayThenSameMapNoExtras!500 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2384 (array!45800 array!45802 (_ BitVec 32) (_ BitVec 32) V!24765 V!24765 (_ BitVec 32) Int) ListLongMap!8693)

(assert (=> b!823056 (= lt!370954 (getCurrentListMapNoExtraKeys!2384 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823056 (= lt!370948 (getCurrentListMapNoExtraKeys!2384 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823057 () Bool)

(assert (=> b!823057 (= e!457757 true)))

(declare-fun lt!370957 () ListLongMap!8693)

(declare-fun lt!370955 () ListLongMap!8693)

(declare-fun lt!370950 () tuple2!9856)

(declare-fun +!1864 (ListLongMap!8693 tuple2!9856) ListLongMap!8693)

(assert (=> b!823057 (= lt!370957 (+!1864 lt!370955 lt!370950))))

(declare-fun lt!370952 () Unit!28168)

(declare-fun addCommutativeForDiffKeys!459 (ListLongMap!8693 (_ BitVec 64) V!24765 (_ BitVec 64) V!24765) Unit!28168)

(assert (=> b!823057 (= lt!370952 (addCommutativeForDiffKeys!459 lt!370948 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370949 () ListLongMap!8693)

(assert (=> b!823057 (= lt!370949 lt!370957)))

(declare-fun lt!370956 () tuple2!9856)

(assert (=> b!823057 (= lt!370957 (+!1864 (+!1864 lt!370948 lt!370950) lt!370956))))

(assert (=> b!823057 (= lt!370950 (tuple2!9857 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370953 () ListLongMap!8693)

(assert (=> b!823057 (= lt!370953 lt!370955)))

(assert (=> b!823057 (= lt!370955 (+!1864 lt!370948 lt!370956))))

(assert (=> b!823057 (= lt!370956 (tuple2!9857 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2494 (array!45800 array!45802 (_ BitVec 32) (_ BitVec 32) V!24765 V!24765 (_ BitVec 32) Int) ListLongMap!8693)

(assert (=> b!823057 (= lt!370949 (getCurrentListMap!2494 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823057 (= lt!370953 (getCurrentListMap!2494 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23848 () Bool)

(declare-fun tp!46086 () Bool)

(assert (=> mapNonEmpty!23848 (= mapRes!23848 (and tp!46086 e!457759))))

(declare-fun mapValue!23848 () ValueCell!6996)

(declare-fun mapRest!23848 () (Array (_ BitVec 32) ValueCell!6996))

(declare-fun mapKey!23848 () (_ BitVec 32))

(assert (=> mapNonEmpty!23848 (= (arr!21946 _values!788) (store mapRest!23848 mapKey!23848 mapValue!23848))))

(declare-fun b!823058 () Bool)

(assert (=> b!823058 (= e!457761 tp_is_empty!14823)))

(declare-fun b!823059 () Bool)

(declare-fun res!561410 () Bool)

(assert (=> b!823059 (=> (not res!561410) (not e!457758))))

(assert (=> b!823059 (= res!561410 (and (= (size!22367 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22366 _keys!976) (size!22367 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!561413 () Bool)

(assert (=> start!70900 (=> (not res!561413) (not e!457758))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70900 (= res!561413 (validMask!0 mask!1312))))

(assert (=> start!70900 e!457758))

(assert (=> start!70900 tp_is_empty!14823))

(declare-fun array_inv!17491 (array!45800) Bool)

(assert (=> start!70900 (array_inv!17491 _keys!976)))

(assert (=> start!70900 true))

(declare-fun array_inv!17492 (array!45802) Bool)

(assert (=> start!70900 (and (array_inv!17492 _values!788) e!457762)))

(assert (=> start!70900 tp!46087))

(assert (= (and start!70900 res!561413) b!823059))

(assert (= (and b!823059 res!561410) b!823052))

(assert (= (and b!823052 res!561411) b!823055))

(assert (= (and b!823055 res!561412) b!823056))

(assert (= (and b!823056 (not res!561414)) b!823057))

(assert (= (and b!823053 condMapEmpty!23848) mapIsEmpty!23848))

(assert (= (and b!823053 (not condMapEmpty!23848)) mapNonEmpty!23848))

(get-info :version)

(assert (= (and mapNonEmpty!23848 ((_ is ValueCellFull!6996) mapValue!23848)) b!823054))

(assert (= (and b!823053 ((_ is ValueCellFull!6996) mapDefault!23848)) b!823058))

(assert (= start!70900 b!823053))

(declare-fun m!765231 () Bool)

(assert (=> b!823057 m!765231))

(declare-fun m!765233 () Bool)

(assert (=> b!823057 m!765233))

(assert (=> b!823057 m!765233))

(declare-fun m!765235 () Bool)

(assert (=> b!823057 m!765235))

(declare-fun m!765237 () Bool)

(assert (=> b!823057 m!765237))

(declare-fun m!765239 () Bool)

(assert (=> b!823057 m!765239))

(declare-fun m!765241 () Bool)

(assert (=> b!823057 m!765241))

(declare-fun m!765243 () Bool)

(assert (=> b!823057 m!765243))

(declare-fun m!765245 () Bool)

(assert (=> mapNonEmpty!23848 m!765245))

(declare-fun m!765247 () Bool)

(assert (=> b!823055 m!765247))

(declare-fun m!765249 () Bool)

(assert (=> start!70900 m!765249))

(declare-fun m!765251 () Bool)

(assert (=> start!70900 m!765251))

(declare-fun m!765253 () Bool)

(assert (=> start!70900 m!765253))

(declare-fun m!765255 () Bool)

(assert (=> b!823052 m!765255))

(declare-fun m!765257 () Bool)

(assert (=> b!823056 m!765257))

(declare-fun m!765259 () Bool)

(assert (=> b!823056 m!765259))

(declare-fun m!765261 () Bool)

(assert (=> b!823056 m!765261))

(check-sat (not b!823056) (not b!823052) tp_is_empty!14823 b_and!22015 (not b!823055) (not b!823057) (not b_next!13113) (not start!70900) (not mapNonEmpty!23848))
(check-sat b_and!22015 (not b_next!13113))
