; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71118 () Bool)

(assert start!71118)

(declare-fun b_free!13281 () Bool)

(declare-fun b_next!13281 () Bool)

(assert (=> start!71118 (= b_free!13281 (not b_next!13281))))

(declare-fun tp!46599 () Bool)

(declare-fun b_and!22213 () Bool)

(assert (=> start!71118 (= tp!46599 b_and!22213)))

(declare-datatypes ((V!24989 0))(
  ( (V!24990 (val!7543 Int)) )
))
(declare-datatypes ((tuple2!9988 0))(
  ( (tuple2!9989 (_1!5004 (_ BitVec 64)) (_2!5004 V!24989)) )
))
(declare-fun lt!372956 () tuple2!9988)

(declare-datatypes ((List!15832 0))(
  ( (Nil!15829) (Cons!15828 (h!16957 tuple2!9988) (t!22185 List!15832)) )
))
(declare-datatypes ((ListLongMap!8825 0))(
  ( (ListLongMap!8826 (toList!4428 List!15832)) )
))
(declare-fun lt!372964 () ListLongMap!8825)

(declare-fun b!825519 () Bool)

(declare-fun lt!372965 () tuple2!9988)

(declare-fun lt!372958 () ListLongMap!8825)

(declare-fun e!459570 () Bool)

(declare-fun +!1889 (ListLongMap!8825 tuple2!9988) ListLongMap!8825)

(assert (=> b!825519 (= e!459570 (= lt!372958 (+!1889 (+!1889 lt!372964 lt!372965) lt!372956)))))

(declare-fun b!825520 () Bool)

(declare-fun e!459569 () Bool)

(declare-fun tp_is_empty!14991 () Bool)

(assert (=> b!825520 (= e!459569 tp_is_empty!14991)))

(declare-fun b!825521 () Bool)

(declare-fun res!562879 () Bool)

(declare-fun e!459575 () Bool)

(assert (=> b!825521 (=> (not res!562879) (not e!459575))))

(declare-datatypes ((array!46124 0))(
  ( (array!46125 (arr!22104 (Array (_ BitVec 32) (_ BitVec 64))) (size!22525 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46124)

(declare-datatypes ((List!15833 0))(
  ( (Nil!15830) (Cons!15829 (h!16958 (_ BitVec 64)) (t!22186 List!15833)) )
))
(declare-fun arrayNoDuplicates!0 (array!46124 (_ BitVec 32) List!15833) Bool)

(assert (=> b!825521 (= res!562879 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15830))))

(declare-fun mapNonEmpty!24109 () Bool)

(declare-fun mapRes!24109 () Bool)

(declare-fun tp!46600 () Bool)

(assert (=> mapNonEmpty!24109 (= mapRes!24109 (and tp!46600 e!459569))))

(declare-fun mapKey!24109 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7080 0))(
  ( (ValueCellFull!7080 (v!9972 V!24989)) (EmptyCell!7080) )
))
(declare-fun mapRest!24109 () (Array (_ BitVec 32) ValueCell!7080))

(declare-datatypes ((array!46126 0))(
  ( (array!46127 (arr!22105 (Array (_ BitVec 32) ValueCell!7080)) (size!22526 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46126)

(declare-fun mapValue!24109 () ValueCell!7080)

(assert (=> mapNonEmpty!24109 (= (arr!22105 _values!788) (store mapRest!24109 mapKey!24109 mapValue!24109))))

(declare-fun b!825522 () Bool)

(declare-fun e!459568 () Bool)

(assert (=> b!825522 (= e!459568 tp_is_empty!14991)))

(declare-fun b!825523 () Bool)

(declare-fun res!562875 () Bool)

(assert (=> b!825523 (=> (not res!562875) (not e!459575))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!825523 (= res!562875 (and (= (size!22526 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22525 _keys!976) (size!22526 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!825524 () Bool)

(declare-fun e!459573 () Bool)

(assert (=> b!825524 (= e!459573 true)))

(declare-fun lt!372953 () ListLongMap!8825)

(declare-fun lt!372957 () ListLongMap!8825)

(assert (=> b!825524 (= lt!372953 (+!1889 (+!1889 lt!372957 lt!372956) lt!372965))))

(declare-fun lt!372960 () ListLongMap!8825)

(declare-fun lt!372955 () ListLongMap!8825)

(assert (=> b!825524 (and (= lt!372960 lt!372955) (= lt!372958 lt!372955) (= lt!372958 lt!372960))))

(declare-fun lt!372963 () ListLongMap!8825)

(assert (=> b!825524 (= lt!372955 (+!1889 lt!372963 lt!372956))))

(declare-fun lt!372961 () ListLongMap!8825)

(assert (=> b!825524 (= lt!372960 (+!1889 lt!372961 lt!372956))))

(declare-fun zeroValueBefore!34 () V!24989)

(declare-fun zeroValueAfter!34 () V!24989)

(declare-datatypes ((Unit!28297 0))(
  ( (Unit!28298) )
))
(declare-fun lt!372954 () Unit!28297)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!217 (ListLongMap!8825 (_ BitVec 64) V!24989 V!24989) Unit!28297)

(assert (=> b!825524 (= lt!372954 (addSameAsAddTwiceSameKeyDiffValues!217 lt!372961 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!825524 e!459570))

(declare-fun res!562880 () Bool)

(assert (=> b!825524 (=> (not res!562880) (not e!459570))))

(declare-fun lt!372962 () ListLongMap!8825)

(assert (=> b!825524 (= res!562880 (= lt!372962 lt!372963))))

(declare-fun lt!372952 () tuple2!9988)

(assert (=> b!825524 (= lt!372963 (+!1889 lt!372961 lt!372952))))

(assert (=> b!825524 (= lt!372961 (+!1889 lt!372957 lt!372965))))

(assert (=> b!825524 (= lt!372956 (tuple2!9989 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459572 () Bool)

(assert (=> b!825524 e!459572))

(declare-fun res!562881 () Bool)

(assert (=> b!825524 (=> (not res!562881) (not e!459572))))

(assert (=> b!825524 (= res!562881 (= lt!372962 (+!1889 (+!1889 lt!372957 lt!372952) lt!372965)))))

(declare-fun minValue!754 () V!24989)

(assert (=> b!825524 (= lt!372965 (tuple2!9989 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825524 (= lt!372952 (tuple2!9989 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2539 (array!46124 array!46126 (_ BitVec 32) (_ BitVec 32) V!24989 V!24989 (_ BitVec 32) Int) ListLongMap!8825)

(assert (=> b!825524 (= lt!372958 (getCurrentListMap!2539 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825524 (= lt!372962 (getCurrentListMap!2539 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825525 () Bool)

(declare-fun res!562878 () Bool)

(assert (=> b!825525 (=> (not res!562878) (not e!459575))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46124 (_ BitVec 32)) Bool)

(assert (=> b!825525 (= res!562878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!825526 () Bool)

(assert (=> b!825526 (= e!459575 (not e!459573))))

(declare-fun res!562876 () Bool)

(assert (=> b!825526 (=> res!562876 e!459573)))

(assert (=> b!825526 (= res!562876 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!825526 (= lt!372957 lt!372964)))

(declare-fun lt!372959 () Unit!28297)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!560 (array!46124 array!46126 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24989 V!24989 V!24989 V!24989 (_ BitVec 32) Int) Unit!28297)

(assert (=> b!825526 (= lt!372959 (lemmaNoChangeToArrayThenSameMapNoExtras!560 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2444 (array!46124 array!46126 (_ BitVec 32) (_ BitVec 32) V!24989 V!24989 (_ BitVec 32) Int) ListLongMap!8825)

(assert (=> b!825526 (= lt!372964 (getCurrentListMapNoExtraKeys!2444 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825526 (= lt!372957 (getCurrentListMapNoExtraKeys!2444 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24109 () Bool)

(assert (=> mapIsEmpty!24109 mapRes!24109))

(declare-fun b!825527 () Bool)

(assert (=> b!825527 (= e!459572 (= lt!372958 (+!1889 (+!1889 lt!372964 (tuple2!9989 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!372965)))))

(declare-fun b!825528 () Bool)

(declare-fun e!459571 () Bool)

(assert (=> b!825528 (= e!459571 (and e!459568 mapRes!24109))))

(declare-fun condMapEmpty!24109 () Bool)

(declare-fun mapDefault!24109 () ValueCell!7080)

(assert (=> b!825528 (= condMapEmpty!24109 (= (arr!22105 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7080)) mapDefault!24109)))))

(declare-fun res!562877 () Bool)

(assert (=> start!71118 (=> (not res!562877) (not e!459575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71118 (= res!562877 (validMask!0 mask!1312))))

(assert (=> start!71118 e!459575))

(assert (=> start!71118 tp_is_empty!14991))

(declare-fun array_inv!17611 (array!46124) Bool)

(assert (=> start!71118 (array_inv!17611 _keys!976)))

(assert (=> start!71118 true))

(declare-fun array_inv!17612 (array!46126) Bool)

(assert (=> start!71118 (and (array_inv!17612 _values!788) e!459571)))

(assert (=> start!71118 tp!46599))

(assert (= (and start!71118 res!562877) b!825523))

(assert (= (and b!825523 res!562875) b!825525))

(assert (= (and b!825525 res!562878) b!825521))

(assert (= (and b!825521 res!562879) b!825526))

(assert (= (and b!825526 (not res!562876)) b!825524))

(assert (= (and b!825524 res!562881) b!825527))

(assert (= (and b!825524 res!562880) b!825519))

(assert (= (and b!825528 condMapEmpty!24109) mapIsEmpty!24109))

(assert (= (and b!825528 (not condMapEmpty!24109)) mapNonEmpty!24109))

(get-info :version)

(assert (= (and mapNonEmpty!24109 ((_ is ValueCellFull!7080) mapValue!24109)) b!825520))

(assert (= (and b!825528 ((_ is ValueCellFull!7080) mapDefault!24109)) b!825522))

(assert (= start!71118 b!825528))

(declare-fun m!767915 () Bool)

(assert (=> b!825526 m!767915))

(declare-fun m!767917 () Bool)

(assert (=> b!825526 m!767917))

(declare-fun m!767919 () Bool)

(assert (=> b!825526 m!767919))

(declare-fun m!767921 () Bool)

(assert (=> b!825521 m!767921))

(declare-fun m!767923 () Bool)

(assert (=> b!825519 m!767923))

(assert (=> b!825519 m!767923))

(declare-fun m!767925 () Bool)

(assert (=> b!825519 m!767925))

(declare-fun m!767927 () Bool)

(assert (=> start!71118 m!767927))

(declare-fun m!767929 () Bool)

(assert (=> start!71118 m!767929))

(declare-fun m!767931 () Bool)

(assert (=> start!71118 m!767931))

(declare-fun m!767933 () Bool)

(assert (=> b!825525 m!767933))

(declare-fun m!767935 () Bool)

(assert (=> mapNonEmpty!24109 m!767935))

(declare-fun m!767937 () Bool)

(assert (=> b!825527 m!767937))

(assert (=> b!825527 m!767937))

(declare-fun m!767939 () Bool)

(assert (=> b!825527 m!767939))

(declare-fun m!767941 () Bool)

(assert (=> b!825524 m!767941))

(declare-fun m!767943 () Bool)

(assert (=> b!825524 m!767943))

(declare-fun m!767945 () Bool)

(assert (=> b!825524 m!767945))

(declare-fun m!767947 () Bool)

(assert (=> b!825524 m!767947))

(declare-fun m!767949 () Bool)

(assert (=> b!825524 m!767949))

(declare-fun m!767951 () Bool)

(assert (=> b!825524 m!767951))

(declare-fun m!767953 () Bool)

(assert (=> b!825524 m!767953))

(declare-fun m!767955 () Bool)

(assert (=> b!825524 m!767955))

(declare-fun m!767957 () Bool)

(assert (=> b!825524 m!767957))

(assert (=> b!825524 m!767943))

(assert (=> b!825524 m!767953))

(declare-fun m!767959 () Bool)

(assert (=> b!825524 m!767959))

(declare-fun m!767961 () Bool)

(assert (=> b!825524 m!767961))

(check-sat (not b_next!13281) (not start!71118) (not b!825519) (not b!825526) (not mapNonEmpty!24109) b_and!22213 (not b!825525) tp_is_empty!14991 (not b!825524) (not b!825527) (not b!825521))
(check-sat b_and!22213 (not b_next!13281))
