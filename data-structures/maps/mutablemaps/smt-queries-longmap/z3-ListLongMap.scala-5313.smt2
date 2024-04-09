; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71124 () Bool)

(assert start!71124)

(declare-fun b_free!13287 () Bool)

(declare-fun b_next!13287 () Bool)

(assert (=> start!71124 (= b_free!13287 (not b_next!13287))))

(declare-fun tp!46617 () Bool)

(declare-fun b_and!22219 () Bool)

(assert (=> start!71124 (= tp!46617 b_and!22219)))

(declare-fun b!825609 () Bool)

(declare-fun e!459646 () Bool)

(declare-fun tp_is_empty!14997 () Bool)

(assert (=> b!825609 (= e!459646 tp_is_empty!14997)))

(declare-datatypes ((V!24997 0))(
  ( (V!24998 (val!7546 Int)) )
))
(declare-datatypes ((tuple2!9994 0))(
  ( (tuple2!9995 (_1!5007 (_ BitVec 64)) (_2!5007 V!24997)) )
))
(declare-datatypes ((List!15837 0))(
  ( (Nil!15834) (Cons!15833 (h!16962 tuple2!9994) (t!22190 List!15837)) )
))
(declare-datatypes ((ListLongMap!8831 0))(
  ( (ListLongMap!8832 (toList!4431 List!15837)) )
))
(declare-fun lt!373082 () ListLongMap!8831)

(declare-fun lt!373088 () ListLongMap!8831)

(declare-fun zeroValueAfter!34 () V!24997)

(declare-fun b!825610 () Bool)

(declare-fun e!459645 () Bool)

(declare-fun lt!373090 () tuple2!9994)

(declare-fun +!1892 (ListLongMap!8831 tuple2!9994) ListLongMap!8831)

(assert (=> b!825610 (= e!459645 (= lt!373088 (+!1892 (+!1892 lt!373082 (tuple2!9995 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!373090)))))

(declare-fun b!825611 () Bool)

(declare-fun e!459640 () Bool)

(assert (=> b!825611 (= e!459640 tp_is_empty!14997)))

(declare-fun lt!373086 () tuple2!9994)

(declare-fun e!459641 () Bool)

(declare-fun b!825612 () Bool)

(assert (=> b!825612 (= e!459641 (= lt!373088 (+!1892 (+!1892 lt!373082 lt!373090) lt!373086)))))

(declare-fun b!825613 () Bool)

(declare-fun res!562942 () Bool)

(declare-fun e!459642 () Bool)

(assert (=> b!825613 (=> (not res!562942) (not e!459642))))

(declare-datatypes ((array!46136 0))(
  ( (array!46137 (arr!22110 (Array (_ BitVec 32) (_ BitVec 64))) (size!22531 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46136)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46136 (_ BitVec 32)) Bool)

(assert (=> b!825613 (= res!562942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!825614 () Bool)

(declare-fun res!562941 () Bool)

(assert (=> b!825614 (=> (not res!562941) (not e!459642))))

(declare-datatypes ((List!15838 0))(
  ( (Nil!15835) (Cons!15834 (h!16963 (_ BitVec 64)) (t!22191 List!15838)) )
))
(declare-fun arrayNoDuplicates!0 (array!46136 (_ BitVec 32) List!15838) Bool)

(assert (=> b!825614 (= res!562941 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15835))))

(declare-fun res!562944 () Bool)

(assert (=> start!71124 (=> (not res!562944) (not e!459642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71124 (= res!562944 (validMask!0 mask!1312))))

(assert (=> start!71124 e!459642))

(assert (=> start!71124 tp_is_empty!14997))

(declare-fun array_inv!17615 (array!46136) Bool)

(assert (=> start!71124 (array_inv!17615 _keys!976)))

(assert (=> start!71124 true))

(declare-datatypes ((ValueCell!7083 0))(
  ( (ValueCellFull!7083 (v!9975 V!24997)) (EmptyCell!7083) )
))
(declare-datatypes ((array!46138 0))(
  ( (array!46139 (arr!22111 (Array (_ BitVec 32) ValueCell!7083)) (size!22532 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46138)

(declare-fun e!459647 () Bool)

(declare-fun array_inv!17616 (array!46138) Bool)

(assert (=> start!71124 (and (array_inv!17616 _values!788) e!459647)))

(assert (=> start!71124 tp!46617))

(declare-fun b!825615 () Bool)

(declare-fun res!562943 () Bool)

(assert (=> b!825615 (=> (not res!562943) (not e!459642))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!825615 (= res!562943 (and (= (size!22532 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22531 _keys!976) (size!22532 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!825616 () Bool)

(declare-fun e!459643 () Bool)

(assert (=> b!825616 (= e!459643 true)))

(declare-fun lt!373091 () ListLongMap!8831)

(declare-fun lt!373083 () ListLongMap!8831)

(assert (=> b!825616 (= lt!373083 (+!1892 (+!1892 lt!373091 lt!373086) lt!373090))))

(declare-fun lt!373087 () ListLongMap!8831)

(declare-fun lt!373079 () ListLongMap!8831)

(assert (=> b!825616 (and (= lt!373087 lt!373079) (= lt!373088 lt!373079) (= lt!373088 lt!373087))))

(declare-fun lt!373085 () ListLongMap!8831)

(assert (=> b!825616 (= lt!373079 (+!1892 lt!373085 lt!373086))))

(declare-fun lt!373080 () ListLongMap!8831)

(assert (=> b!825616 (= lt!373087 (+!1892 lt!373080 lt!373086))))

(declare-datatypes ((Unit!28303 0))(
  ( (Unit!28304) )
))
(declare-fun lt!373078 () Unit!28303)

(declare-fun zeroValueBefore!34 () V!24997)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!220 (ListLongMap!8831 (_ BitVec 64) V!24997 V!24997) Unit!28303)

(assert (=> b!825616 (= lt!373078 (addSameAsAddTwiceSameKeyDiffValues!220 lt!373080 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!825616 e!459641))

(declare-fun res!562939 () Bool)

(assert (=> b!825616 (=> (not res!562939) (not e!459641))))

(declare-fun lt!373084 () ListLongMap!8831)

(assert (=> b!825616 (= res!562939 (= lt!373084 lt!373085))))

(declare-fun lt!373081 () tuple2!9994)

(assert (=> b!825616 (= lt!373085 (+!1892 lt!373080 lt!373081))))

(assert (=> b!825616 (= lt!373080 (+!1892 lt!373091 lt!373090))))

(assert (=> b!825616 (= lt!373086 (tuple2!9995 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!825616 e!459645))

(declare-fun res!562940 () Bool)

(assert (=> b!825616 (=> (not res!562940) (not e!459645))))

(assert (=> b!825616 (= res!562940 (= lt!373084 (+!1892 (+!1892 lt!373091 lt!373081) lt!373090)))))

(declare-fun minValue!754 () V!24997)

(assert (=> b!825616 (= lt!373090 (tuple2!9995 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825616 (= lt!373081 (tuple2!9995 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2542 (array!46136 array!46138 (_ BitVec 32) (_ BitVec 32) V!24997 V!24997 (_ BitVec 32) Int) ListLongMap!8831)

(assert (=> b!825616 (= lt!373088 (getCurrentListMap!2542 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825616 (= lt!373084 (getCurrentListMap!2542 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!24118 () Bool)

(declare-fun mapRes!24118 () Bool)

(declare-fun tp!46618 () Bool)

(assert (=> mapNonEmpty!24118 (= mapRes!24118 (and tp!46618 e!459646))))

(declare-fun mapValue!24118 () ValueCell!7083)

(declare-fun mapRest!24118 () (Array (_ BitVec 32) ValueCell!7083))

(declare-fun mapKey!24118 () (_ BitVec 32))

(assert (=> mapNonEmpty!24118 (= (arr!22111 _values!788) (store mapRest!24118 mapKey!24118 mapValue!24118))))

(declare-fun b!825617 () Bool)

(assert (=> b!825617 (= e!459647 (and e!459640 mapRes!24118))))

(declare-fun condMapEmpty!24118 () Bool)

(declare-fun mapDefault!24118 () ValueCell!7083)

(assert (=> b!825617 (= condMapEmpty!24118 (= (arr!22111 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7083)) mapDefault!24118)))))

(declare-fun b!825618 () Bool)

(assert (=> b!825618 (= e!459642 (not e!459643))))

(declare-fun res!562938 () Bool)

(assert (=> b!825618 (=> res!562938 e!459643)))

(assert (=> b!825618 (= res!562938 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!825618 (= lt!373091 lt!373082)))

(declare-fun lt!373089 () Unit!28303)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!563 (array!46136 array!46138 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24997 V!24997 V!24997 V!24997 (_ BitVec 32) Int) Unit!28303)

(assert (=> b!825618 (= lt!373089 (lemmaNoChangeToArrayThenSameMapNoExtras!563 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2447 (array!46136 array!46138 (_ BitVec 32) (_ BitVec 32) V!24997 V!24997 (_ BitVec 32) Int) ListLongMap!8831)

(assert (=> b!825618 (= lt!373082 (getCurrentListMapNoExtraKeys!2447 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825618 (= lt!373091 (getCurrentListMapNoExtraKeys!2447 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24118 () Bool)

(assert (=> mapIsEmpty!24118 mapRes!24118))

(assert (= (and start!71124 res!562944) b!825615))

(assert (= (and b!825615 res!562943) b!825613))

(assert (= (and b!825613 res!562942) b!825614))

(assert (= (and b!825614 res!562941) b!825618))

(assert (= (and b!825618 (not res!562938)) b!825616))

(assert (= (and b!825616 res!562940) b!825610))

(assert (= (and b!825616 res!562939) b!825612))

(assert (= (and b!825617 condMapEmpty!24118) mapIsEmpty!24118))

(assert (= (and b!825617 (not condMapEmpty!24118)) mapNonEmpty!24118))

(get-info :version)

(assert (= (and mapNonEmpty!24118 ((_ is ValueCellFull!7083) mapValue!24118)) b!825609))

(assert (= (and b!825617 ((_ is ValueCellFull!7083) mapDefault!24118)) b!825611))

(assert (= start!71124 b!825617))

(declare-fun m!768059 () Bool)

(assert (=> b!825610 m!768059))

(assert (=> b!825610 m!768059))

(declare-fun m!768061 () Bool)

(assert (=> b!825610 m!768061))

(declare-fun m!768063 () Bool)

(assert (=> b!825616 m!768063))

(declare-fun m!768065 () Bool)

(assert (=> b!825616 m!768065))

(declare-fun m!768067 () Bool)

(assert (=> b!825616 m!768067))

(declare-fun m!768069 () Bool)

(assert (=> b!825616 m!768069))

(declare-fun m!768071 () Bool)

(assert (=> b!825616 m!768071))

(declare-fun m!768073 () Bool)

(assert (=> b!825616 m!768073))

(assert (=> b!825616 m!768069))

(assert (=> b!825616 m!768065))

(declare-fun m!768075 () Bool)

(assert (=> b!825616 m!768075))

(declare-fun m!768077 () Bool)

(assert (=> b!825616 m!768077))

(declare-fun m!768079 () Bool)

(assert (=> b!825616 m!768079))

(declare-fun m!768081 () Bool)

(assert (=> b!825616 m!768081))

(declare-fun m!768083 () Bool)

(assert (=> b!825616 m!768083))

(declare-fun m!768085 () Bool)

(assert (=> mapNonEmpty!24118 m!768085))

(declare-fun m!768087 () Bool)

(assert (=> b!825618 m!768087))

(declare-fun m!768089 () Bool)

(assert (=> b!825618 m!768089))

(declare-fun m!768091 () Bool)

(assert (=> b!825618 m!768091))

(declare-fun m!768093 () Bool)

(assert (=> b!825612 m!768093))

(assert (=> b!825612 m!768093))

(declare-fun m!768095 () Bool)

(assert (=> b!825612 m!768095))

(declare-fun m!768097 () Bool)

(assert (=> b!825613 m!768097))

(declare-fun m!768099 () Bool)

(assert (=> start!71124 m!768099))

(declare-fun m!768101 () Bool)

(assert (=> start!71124 m!768101))

(declare-fun m!768103 () Bool)

(assert (=> start!71124 m!768103))

(declare-fun m!768105 () Bool)

(assert (=> b!825614 m!768105))

(check-sat (not mapNonEmpty!24118) tp_is_empty!14997 (not start!71124) (not b!825616) b_and!22219 (not b!825618) (not b!825613) (not b!825612) (not b!825614) (not b_next!13287) (not b!825610))
(check-sat b_and!22219 (not b_next!13287))
