; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39692 () Bool)

(assert start!39692)

(declare-fun b_free!9951 () Bool)

(declare-fun b_next!9951 () Bool)

(assert (=> start!39692 (= b_free!9951 (not b_next!9951))))

(declare-fun tp!35381 () Bool)

(declare-fun b_and!17625 () Bool)

(assert (=> start!39692 (= tp!35381 b_and!17625)))

(declare-fun b!426044 () Bool)

(declare-fun res!249696 () Bool)

(declare-fun e!252807 () Bool)

(assert (=> b!426044 (=> (not res!249696) (not e!252807))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!426044 (= res!249696 (bvsle from!863 i!563))))

(declare-fun b!426045 () Bool)

(declare-fun res!249691 () Bool)

(declare-fun e!252811 () Bool)

(assert (=> b!426045 (=> (not res!249691) (not e!252811))))

(declare-datatypes ((array!26031 0))(
  ( (array!26032 (arr!12462 (Array (_ BitVec 32) (_ BitVec 64))) (size!12814 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26031)

(declare-datatypes ((List!7340 0))(
  ( (Nil!7337) (Cons!7336 (h!8192 (_ BitVec 64)) (t!12792 List!7340)) )
))
(declare-fun arrayNoDuplicates!0 (array!26031 (_ BitVec 32) List!7340) Bool)

(assert (=> b!426045 (= res!249691 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7337))))

(declare-fun b!426046 () Bool)

(declare-fun e!252810 () Bool)

(declare-fun e!252806 () Bool)

(declare-fun mapRes!18276 () Bool)

(assert (=> b!426046 (= e!252810 (and e!252806 mapRes!18276))))

(declare-fun condMapEmpty!18276 () Bool)

(declare-datatypes ((V!15909 0))(
  ( (V!15910 (val!5596 Int)) )
))
(declare-datatypes ((ValueCell!5208 0))(
  ( (ValueCellFull!5208 (v!7839 V!15909)) (EmptyCell!5208) )
))
(declare-datatypes ((array!26033 0))(
  ( (array!26034 (arr!12463 (Array (_ BitVec 32) ValueCell!5208)) (size!12815 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26033)

(declare-fun mapDefault!18276 () ValueCell!5208)

(assert (=> b!426046 (= condMapEmpty!18276 (= (arr!12463 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5208)) mapDefault!18276)))))

(declare-fun b!426047 () Bool)

(declare-fun res!249701 () Bool)

(assert (=> b!426047 (=> (not res!249701) (not e!252811))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!426047 (= res!249701 (validKeyInArray!0 k0!794))))

(declare-fun b!426048 () Bool)

(declare-fun e!252808 () Bool)

(assert (=> b!426048 (= e!252807 e!252808)))

(declare-fun res!249702 () Bool)

(assert (=> b!426048 (=> (not res!249702) (not e!252808))))

(assert (=> b!426048 (= res!249702 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!15909)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!194863 () array!26031)

(declare-fun lt!194864 () array!26033)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15909)

(declare-datatypes ((tuple2!7294 0))(
  ( (tuple2!7295 (_1!3657 (_ BitVec 64)) (_2!3657 V!15909)) )
))
(declare-datatypes ((List!7341 0))(
  ( (Nil!7338) (Cons!7337 (h!8193 tuple2!7294) (t!12793 List!7341)) )
))
(declare-datatypes ((ListLongMap!6221 0))(
  ( (ListLongMap!6222 (toList!3126 List!7341)) )
))
(declare-fun lt!194865 () ListLongMap!6221)

(declare-fun getCurrentListMapNoExtraKeys!1327 (array!26031 array!26033 (_ BitVec 32) (_ BitVec 32) V!15909 V!15909 (_ BitVec 32) Int) ListLongMap!6221)

(assert (=> b!426048 (= lt!194865 (getCurrentListMapNoExtraKeys!1327 lt!194863 lt!194864 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15909)

(assert (=> b!426048 (= lt!194864 (array!26034 (store (arr!12463 _values!549) i!563 (ValueCellFull!5208 v!412)) (size!12815 _values!549)))))

(declare-fun lt!194861 () ListLongMap!6221)

(assert (=> b!426048 (= lt!194861 (getCurrentListMapNoExtraKeys!1327 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!426049 () Bool)

(declare-fun res!249697 () Bool)

(assert (=> b!426049 (=> (not res!249697) (not e!252811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!426049 (= res!249697 (validMask!0 mask!1025))))

(declare-fun b!426051 () Bool)

(declare-fun res!249690 () Bool)

(assert (=> b!426051 (=> (not res!249690) (not e!252811))))

(assert (=> b!426051 (= res!249690 (and (= (size!12815 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12814 _keys!709) (size!12815 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!426052 () Bool)

(assert (=> b!426052 (= e!252811 e!252807)))

(declare-fun res!249698 () Bool)

(assert (=> b!426052 (=> (not res!249698) (not e!252807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26031 (_ BitVec 32)) Bool)

(assert (=> b!426052 (= res!249698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194863 mask!1025))))

(assert (=> b!426052 (= lt!194863 (array!26032 (store (arr!12462 _keys!709) i!563 k0!794) (size!12814 _keys!709)))))

(declare-fun b!426053 () Bool)

(declare-fun res!249699 () Bool)

(assert (=> b!426053 (=> (not res!249699) (not e!252811))))

(assert (=> b!426053 (= res!249699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!18276 () Bool)

(declare-fun tp!35382 () Bool)

(declare-fun e!252809 () Bool)

(assert (=> mapNonEmpty!18276 (= mapRes!18276 (and tp!35382 e!252809))))

(declare-fun mapValue!18276 () ValueCell!5208)

(declare-fun mapKey!18276 () (_ BitVec 32))

(declare-fun mapRest!18276 () (Array (_ BitVec 32) ValueCell!5208))

(assert (=> mapNonEmpty!18276 (= (arr!12463 _values!549) (store mapRest!18276 mapKey!18276 mapValue!18276))))

(declare-fun b!426054 () Bool)

(declare-fun res!249695 () Bool)

(assert (=> b!426054 (=> (not res!249695) (not e!252807))))

(assert (=> b!426054 (= res!249695 (arrayNoDuplicates!0 lt!194863 #b00000000000000000000000000000000 Nil!7337))))

(declare-fun b!426055 () Bool)

(declare-fun res!249700 () Bool)

(assert (=> b!426055 (=> (not res!249700) (not e!252811))))

(assert (=> b!426055 (= res!249700 (or (= (select (arr!12462 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12462 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!426056 () Bool)

(declare-fun res!249692 () Bool)

(assert (=> b!426056 (=> (not res!249692) (not e!252811))))

(declare-fun arrayContainsKey!0 (array!26031 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!426056 (= res!249692 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!426057 () Bool)

(declare-fun res!249694 () Bool)

(assert (=> b!426057 (=> (not res!249694) (not e!252811))))

(assert (=> b!426057 (= res!249694 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12814 _keys!709))))))

(declare-fun b!426058 () Bool)

(assert (=> b!426058 (= e!252808 (not true))))

(declare-fun +!1282 (ListLongMap!6221 tuple2!7294) ListLongMap!6221)

(assert (=> b!426058 (= (getCurrentListMapNoExtraKeys!1327 lt!194863 lt!194864 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1282 (getCurrentListMapNoExtraKeys!1327 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7295 k0!794 v!412)))))

(declare-datatypes ((Unit!12467 0))(
  ( (Unit!12468) )
))
(declare-fun lt!194862 () Unit!12467)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!484 (array!26031 array!26033 (_ BitVec 32) (_ BitVec 32) V!15909 V!15909 (_ BitVec 32) (_ BitVec 64) V!15909 (_ BitVec 32) Int) Unit!12467)

(assert (=> b!426058 (= lt!194862 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!484 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!426059 () Bool)

(declare-fun tp_is_empty!11103 () Bool)

(assert (=> b!426059 (= e!252809 tp_is_empty!11103)))

(declare-fun mapIsEmpty!18276 () Bool)

(assert (=> mapIsEmpty!18276 mapRes!18276))

(declare-fun b!426050 () Bool)

(assert (=> b!426050 (= e!252806 tp_is_empty!11103)))

(declare-fun res!249693 () Bool)

(assert (=> start!39692 (=> (not res!249693) (not e!252811))))

(assert (=> start!39692 (= res!249693 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12814 _keys!709))))))

(assert (=> start!39692 e!252811))

(assert (=> start!39692 tp_is_empty!11103))

(assert (=> start!39692 tp!35381))

(assert (=> start!39692 true))

(declare-fun array_inv!9082 (array!26033) Bool)

(assert (=> start!39692 (and (array_inv!9082 _values!549) e!252810)))

(declare-fun array_inv!9083 (array!26031) Bool)

(assert (=> start!39692 (array_inv!9083 _keys!709)))

(assert (= (and start!39692 res!249693) b!426049))

(assert (= (and b!426049 res!249697) b!426051))

(assert (= (and b!426051 res!249690) b!426053))

(assert (= (and b!426053 res!249699) b!426045))

(assert (= (and b!426045 res!249691) b!426057))

(assert (= (and b!426057 res!249694) b!426047))

(assert (= (and b!426047 res!249701) b!426055))

(assert (= (and b!426055 res!249700) b!426056))

(assert (= (and b!426056 res!249692) b!426052))

(assert (= (and b!426052 res!249698) b!426054))

(assert (= (and b!426054 res!249695) b!426044))

(assert (= (and b!426044 res!249696) b!426048))

(assert (= (and b!426048 res!249702) b!426058))

(assert (= (and b!426046 condMapEmpty!18276) mapIsEmpty!18276))

(assert (= (and b!426046 (not condMapEmpty!18276)) mapNonEmpty!18276))

(get-info :version)

(assert (= (and mapNonEmpty!18276 ((_ is ValueCellFull!5208) mapValue!18276)) b!426059))

(assert (= (and b!426046 ((_ is ValueCellFull!5208) mapDefault!18276)) b!426050))

(assert (= start!39692 b!426046))

(declare-fun m!414813 () Bool)

(assert (=> start!39692 m!414813))

(declare-fun m!414815 () Bool)

(assert (=> start!39692 m!414815))

(declare-fun m!414817 () Bool)

(assert (=> b!426049 m!414817))

(declare-fun m!414819 () Bool)

(assert (=> b!426053 m!414819))

(declare-fun m!414821 () Bool)

(assert (=> b!426045 m!414821))

(declare-fun m!414823 () Bool)

(assert (=> b!426055 m!414823))

(declare-fun m!414825 () Bool)

(assert (=> b!426058 m!414825))

(declare-fun m!414827 () Bool)

(assert (=> b!426058 m!414827))

(assert (=> b!426058 m!414827))

(declare-fun m!414829 () Bool)

(assert (=> b!426058 m!414829))

(declare-fun m!414831 () Bool)

(assert (=> b!426058 m!414831))

(declare-fun m!414833 () Bool)

(assert (=> b!426054 m!414833))

(declare-fun m!414835 () Bool)

(assert (=> b!426048 m!414835))

(declare-fun m!414837 () Bool)

(assert (=> b!426048 m!414837))

(declare-fun m!414839 () Bool)

(assert (=> b!426048 m!414839))

(declare-fun m!414841 () Bool)

(assert (=> mapNonEmpty!18276 m!414841))

(declare-fun m!414843 () Bool)

(assert (=> b!426047 m!414843))

(declare-fun m!414845 () Bool)

(assert (=> b!426052 m!414845))

(declare-fun m!414847 () Bool)

(assert (=> b!426052 m!414847))

(declare-fun m!414849 () Bool)

(assert (=> b!426056 m!414849))

(check-sat (not b!426054) (not b!426045) (not b_next!9951) tp_is_empty!11103 (not b!426056) (not mapNonEmpty!18276) (not b!426047) (not b!426049) (not b!426048) (not b!426058) b_and!17625 (not b!426053) (not start!39692) (not b!426052))
(check-sat b_and!17625 (not b_next!9951))
