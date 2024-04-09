; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40178 () Bool)

(assert start!40178)

(declare-fun b_free!10437 () Bool)

(declare-fun b_next!10437 () Bool)

(assert (=> start!40178 (= b_free!10437 (not b_next!10437))))

(declare-fun tp!36840 () Bool)

(declare-fun b_and!18423 () Bool)

(assert (=> start!40178 (= tp!36840 b_and!18423)))

(declare-fun b!439649 () Bool)

(declare-fun res!259969 () Bool)

(declare-fun e!259125 () Bool)

(assert (=> b!439649 (=> (not res!259969) (not e!259125))))

(declare-datatypes ((array!26969 0))(
  ( (array!26970 (arr!12931 (Array (_ BitVec 32) (_ BitVec 64))) (size!13283 (_ BitVec 32))) )
))
(declare-fun lt!202359 () array!26969)

(declare-datatypes ((List!7720 0))(
  ( (Nil!7717) (Cons!7716 (h!8572 (_ BitVec 64)) (t!13484 List!7720)) )
))
(declare-fun arrayNoDuplicates!0 (array!26969 (_ BitVec 32) List!7720) Bool)

(assert (=> b!439649 (= res!259969 (arrayNoDuplicates!0 lt!202359 #b00000000000000000000000000000000 Nil!7717))))

(declare-fun mapNonEmpty!19005 () Bool)

(declare-fun mapRes!19005 () Bool)

(declare-fun tp!36839 () Bool)

(declare-fun e!259123 () Bool)

(assert (=> mapNonEmpty!19005 (= mapRes!19005 (and tp!36839 e!259123))))

(declare-datatypes ((V!16557 0))(
  ( (V!16558 (val!5839 Int)) )
))
(declare-datatypes ((ValueCell!5451 0))(
  ( (ValueCellFull!5451 (v!8082 V!16557)) (EmptyCell!5451) )
))
(declare-fun mapValue!19005 () ValueCell!5451)

(declare-fun mapKey!19005 () (_ BitVec 32))

(declare-datatypes ((array!26971 0))(
  ( (array!26972 (arr!12932 (Array (_ BitVec 32) ValueCell!5451)) (size!13284 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26971)

(declare-fun mapRest!19005 () (Array (_ BitVec 32) ValueCell!5451))

(assert (=> mapNonEmpty!19005 (= (arr!12932 _values!549) (store mapRest!19005 mapKey!19005 mapValue!19005))))

(declare-fun b!439650 () Bool)

(declare-fun e!259127 () Bool)

(declare-fun e!259124 () Bool)

(assert (=> b!439650 (= e!259127 (and e!259124 mapRes!19005))))

(declare-fun condMapEmpty!19005 () Bool)

(declare-fun mapDefault!19005 () ValueCell!5451)

(assert (=> b!439650 (= condMapEmpty!19005 (= (arr!12932 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5451)) mapDefault!19005)))))

(declare-fun res!259975 () Bool)

(declare-fun e!259126 () Bool)

(assert (=> start!40178 (=> (not res!259975) (not e!259126))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun _keys!709 () array!26969)

(assert (=> start!40178 (= res!259975 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13283 _keys!709))))))

(assert (=> start!40178 e!259126))

(declare-fun tp_is_empty!11589 () Bool)

(assert (=> start!40178 tp_is_empty!11589))

(assert (=> start!40178 tp!36840))

(assert (=> start!40178 true))

(declare-fun array_inv!9380 (array!26971) Bool)

(assert (=> start!40178 (and (array_inv!9380 _values!549) e!259127)))

(declare-fun array_inv!9381 (array!26969) Bool)

(assert (=> start!40178 (array_inv!9381 _keys!709)))

(declare-fun b!439651 () Bool)

(assert (=> b!439651 (= e!259123 tp_is_empty!11589)))

(declare-fun b!439652 () Bool)

(declare-fun res!259978 () Bool)

(assert (=> b!439652 (=> (not res!259978) (not e!259126))))

(assert (=> b!439652 (= res!259978 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7717))))

(declare-fun b!439653 () Bool)

(declare-fun e!259129 () Bool)

(assert (=> b!439653 (= e!259125 e!259129)))

(declare-fun res!259973 () Bool)

(assert (=> b!439653 (=> (not res!259973) (not e!259129))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!439653 (= res!259973 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16557)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7678 0))(
  ( (tuple2!7679 (_1!3849 (_ BitVec 64)) (_2!3849 V!16557)) )
))
(declare-datatypes ((List!7721 0))(
  ( (Nil!7718) (Cons!7717 (h!8573 tuple2!7678) (t!13485 List!7721)) )
))
(declare-datatypes ((ListLongMap!6605 0))(
  ( (ListLongMap!6606 (toList!3318 List!7721)) )
))
(declare-fun lt!202360 () ListLongMap!6605)

(declare-fun zeroValue!515 () V!16557)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!202361 () array!26971)

(declare-fun getCurrentListMapNoExtraKeys!1500 (array!26969 array!26971 (_ BitVec 32) (_ BitVec 32) V!16557 V!16557 (_ BitVec 32) Int) ListLongMap!6605)

(assert (=> b!439653 (= lt!202360 (getCurrentListMapNoExtraKeys!1500 lt!202359 lt!202361 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16557)

(assert (=> b!439653 (= lt!202361 (array!26972 (store (arr!12932 _values!549) i!563 (ValueCellFull!5451 v!412)) (size!13284 _values!549)))))

(declare-fun lt!202362 () ListLongMap!6605)

(assert (=> b!439653 (= lt!202362 (getCurrentListMapNoExtraKeys!1500 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!439654 () Bool)

(declare-fun res!259976 () Bool)

(assert (=> b!439654 (=> (not res!259976) (not e!259126))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!439654 (= res!259976 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!19005 () Bool)

(assert (=> mapIsEmpty!19005 mapRes!19005))

(declare-fun b!439655 () Bool)

(declare-fun res!259968 () Bool)

(assert (=> b!439655 (=> (not res!259968) (not e!259126))))

(assert (=> b!439655 (= res!259968 (or (= (select (arr!12931 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12931 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!439656 () Bool)

(assert (=> b!439656 (= e!259129 (not true))))

(declare-fun +!1457 (ListLongMap!6605 tuple2!7678) ListLongMap!6605)

(assert (=> b!439656 (= (getCurrentListMapNoExtraKeys!1500 lt!202359 lt!202361 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1457 (getCurrentListMapNoExtraKeys!1500 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7679 k0!794 v!412)))))

(declare-datatypes ((Unit!13029 0))(
  ( (Unit!13030) )
))
(declare-fun lt!202358 () Unit!13029)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!635 (array!26969 array!26971 (_ BitVec 32) (_ BitVec 32) V!16557 V!16557 (_ BitVec 32) (_ BitVec 64) V!16557 (_ BitVec 32) Int) Unit!13029)

(assert (=> b!439656 (= lt!202358 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!635 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!439657 () Bool)

(declare-fun res!259980 () Bool)

(assert (=> b!439657 (=> (not res!259980) (not e!259126))))

(assert (=> b!439657 (= res!259980 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13283 _keys!709))))))

(declare-fun b!439658 () Bool)

(declare-fun res!259974 () Bool)

(assert (=> b!439658 (=> (not res!259974) (not e!259126))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26969 (_ BitVec 32)) Bool)

(assert (=> b!439658 (= res!259974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!439659 () Bool)

(declare-fun res!259970 () Bool)

(assert (=> b!439659 (=> (not res!259970) (not e!259125))))

(assert (=> b!439659 (= res!259970 (bvsle from!863 i!563))))

(declare-fun b!439660 () Bool)

(declare-fun res!259979 () Bool)

(assert (=> b!439660 (=> (not res!259979) (not e!259126))))

(declare-fun arrayContainsKey!0 (array!26969 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!439660 (= res!259979 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!439661 () Bool)

(declare-fun res!259972 () Bool)

(assert (=> b!439661 (=> (not res!259972) (not e!259126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!439661 (= res!259972 (validMask!0 mask!1025))))

(declare-fun b!439662 () Bool)

(assert (=> b!439662 (= e!259124 tp_is_empty!11589)))

(declare-fun b!439663 () Bool)

(declare-fun res!259971 () Bool)

(assert (=> b!439663 (=> (not res!259971) (not e!259126))))

(assert (=> b!439663 (= res!259971 (and (= (size!13284 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13283 _keys!709) (size!13284 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!439664 () Bool)

(assert (=> b!439664 (= e!259126 e!259125)))

(declare-fun res!259977 () Bool)

(assert (=> b!439664 (=> (not res!259977) (not e!259125))))

(assert (=> b!439664 (= res!259977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202359 mask!1025))))

(assert (=> b!439664 (= lt!202359 (array!26970 (store (arr!12931 _keys!709) i!563 k0!794) (size!13283 _keys!709)))))

(assert (= (and start!40178 res!259975) b!439661))

(assert (= (and b!439661 res!259972) b!439663))

(assert (= (and b!439663 res!259971) b!439658))

(assert (= (and b!439658 res!259974) b!439652))

(assert (= (and b!439652 res!259978) b!439657))

(assert (= (and b!439657 res!259980) b!439654))

(assert (= (and b!439654 res!259976) b!439655))

(assert (= (and b!439655 res!259968) b!439660))

(assert (= (and b!439660 res!259979) b!439664))

(assert (= (and b!439664 res!259977) b!439649))

(assert (= (and b!439649 res!259969) b!439659))

(assert (= (and b!439659 res!259970) b!439653))

(assert (= (and b!439653 res!259973) b!439656))

(assert (= (and b!439650 condMapEmpty!19005) mapIsEmpty!19005))

(assert (= (and b!439650 (not condMapEmpty!19005)) mapNonEmpty!19005))

(get-info :version)

(assert (= (and mapNonEmpty!19005 ((_ is ValueCellFull!5451) mapValue!19005)) b!439651))

(assert (= (and b!439650 ((_ is ValueCellFull!5451) mapDefault!19005)) b!439662))

(assert (= start!40178 b!439650))

(declare-fun m!426855 () Bool)

(assert (=> b!439661 m!426855))

(declare-fun m!426857 () Bool)

(assert (=> mapNonEmpty!19005 m!426857))

(declare-fun m!426859 () Bool)

(assert (=> b!439658 m!426859))

(declare-fun m!426861 () Bool)

(assert (=> b!439652 m!426861))

(declare-fun m!426863 () Bool)

(assert (=> b!439655 m!426863))

(declare-fun m!426865 () Bool)

(assert (=> b!439660 m!426865))

(declare-fun m!426867 () Bool)

(assert (=> b!439654 m!426867))

(declare-fun m!426869 () Bool)

(assert (=> b!439653 m!426869))

(declare-fun m!426871 () Bool)

(assert (=> b!439653 m!426871))

(declare-fun m!426873 () Bool)

(assert (=> b!439653 m!426873))

(declare-fun m!426875 () Bool)

(assert (=> start!40178 m!426875))

(declare-fun m!426877 () Bool)

(assert (=> start!40178 m!426877))

(declare-fun m!426879 () Bool)

(assert (=> b!439649 m!426879))

(declare-fun m!426881 () Bool)

(assert (=> b!439656 m!426881))

(declare-fun m!426883 () Bool)

(assert (=> b!439656 m!426883))

(assert (=> b!439656 m!426883))

(declare-fun m!426885 () Bool)

(assert (=> b!439656 m!426885))

(declare-fun m!426887 () Bool)

(assert (=> b!439656 m!426887))

(declare-fun m!426889 () Bool)

(assert (=> b!439664 m!426889))

(declare-fun m!426891 () Bool)

(assert (=> b!439664 m!426891))

(check-sat (not b_next!10437) (not b!439654) (not b!439660) (not b!439661) tp_is_empty!11589 (not b!439652) (not b!439656) b_and!18423 (not b!439658) (not b!439664) (not b!439653) (not start!40178) (not mapNonEmpty!19005) (not b!439649))
(check-sat b_and!18423 (not b_next!10437))
