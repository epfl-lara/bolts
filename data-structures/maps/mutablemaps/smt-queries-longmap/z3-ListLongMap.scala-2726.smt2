; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40184 () Bool)

(assert start!40184)

(declare-fun b_free!10443 () Bool)

(declare-fun b_next!10443 () Bool)

(assert (=> start!40184 (= b_free!10443 (not b_next!10443))))

(declare-fun tp!36857 () Bool)

(declare-fun b_and!18429 () Bool)

(assert (=> start!40184 (= tp!36857 b_and!18429)))

(declare-fun b!439793 () Bool)

(declare-fun res!260087 () Bool)

(declare-fun e!259189 () Bool)

(assert (=> b!439793 (=> (not res!260087) (not e!259189))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!439793 (= res!260087 (validKeyInArray!0 k0!794))))

(declare-fun b!439794 () Bool)

(declare-fun res!260089 () Bool)

(assert (=> b!439794 (=> (not res!260089) (not e!259189))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!439794 (= res!260089 (validMask!0 mask!1025))))

(declare-fun b!439795 () Bool)

(declare-fun res!260096 () Bool)

(declare-fun e!259187 () Bool)

(assert (=> b!439795 (=> (not res!260096) (not e!259187))))

(declare-datatypes ((array!26981 0))(
  ( (array!26982 (arr!12937 (Array (_ BitVec 32) (_ BitVec 64))) (size!13289 (_ BitVec 32))) )
))
(declare-fun lt!202404 () array!26981)

(declare-datatypes ((List!7726 0))(
  ( (Nil!7723) (Cons!7722 (h!8578 (_ BitVec 64)) (t!13490 List!7726)) )
))
(declare-fun arrayNoDuplicates!0 (array!26981 (_ BitVec 32) List!7726) Bool)

(assert (=> b!439795 (= res!260096 (arrayNoDuplicates!0 lt!202404 #b00000000000000000000000000000000 Nil!7723))))

(declare-fun b!439796 () Bool)

(declare-fun e!259188 () Bool)

(declare-fun e!259186 () Bool)

(declare-fun mapRes!19014 () Bool)

(assert (=> b!439796 (= e!259188 (and e!259186 mapRes!19014))))

(declare-fun condMapEmpty!19014 () Bool)

(declare-datatypes ((V!16565 0))(
  ( (V!16566 (val!5842 Int)) )
))
(declare-datatypes ((ValueCell!5454 0))(
  ( (ValueCellFull!5454 (v!8085 V!16565)) (EmptyCell!5454) )
))
(declare-datatypes ((array!26983 0))(
  ( (array!26984 (arr!12938 (Array (_ BitVec 32) ValueCell!5454)) (size!13290 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26983)

(declare-fun mapDefault!19014 () ValueCell!5454)

(assert (=> b!439796 (= condMapEmpty!19014 (= (arr!12938 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5454)) mapDefault!19014)))))

(declare-fun b!439797 () Bool)

(declare-fun tp_is_empty!11595 () Bool)

(assert (=> b!439797 (= e!259186 tp_is_empty!11595)))

(declare-fun b!439798 () Bool)

(declare-fun res!260085 () Bool)

(assert (=> b!439798 (=> (not res!260085) (not e!259189))))

(declare-fun _keys!709 () array!26981)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!439798 (= res!260085 (or (= (select (arr!12937 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12937 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!439799 () Bool)

(declare-fun res!260097 () Bool)

(assert (=> b!439799 (=> (not res!260097) (not e!259189))))

(declare-fun arrayContainsKey!0 (array!26981 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!439799 (= res!260097 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19014 () Bool)

(assert (=> mapIsEmpty!19014 mapRes!19014))

(declare-fun mapNonEmpty!19014 () Bool)

(declare-fun tp!36858 () Bool)

(declare-fun e!259190 () Bool)

(assert (=> mapNonEmpty!19014 (= mapRes!19014 (and tp!36858 e!259190))))

(declare-fun mapRest!19014 () (Array (_ BitVec 32) ValueCell!5454))

(declare-fun mapValue!19014 () ValueCell!5454)

(declare-fun mapKey!19014 () (_ BitVec 32))

(assert (=> mapNonEmpty!19014 (= (arr!12938 _values!549) (store mapRest!19014 mapKey!19014 mapValue!19014))))

(declare-fun b!439801 () Bool)

(assert (=> b!439801 (= e!259189 e!259187)))

(declare-fun res!260090 () Bool)

(assert (=> b!439801 (=> (not res!260090) (not e!259187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26981 (_ BitVec 32)) Bool)

(assert (=> b!439801 (= res!260090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202404 mask!1025))))

(assert (=> b!439801 (= lt!202404 (array!26982 (store (arr!12937 _keys!709) i!563 k0!794) (size!13289 _keys!709)))))

(declare-fun b!439802 () Bool)

(assert (=> b!439802 (= e!259190 tp_is_empty!11595)))

(declare-fun b!439803 () Bool)

(declare-fun res!260086 () Bool)

(assert (=> b!439803 (=> (not res!260086) (not e!259189))))

(assert (=> b!439803 (= res!260086 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13289 _keys!709))))))

(declare-fun b!439804 () Bool)

(declare-fun res!260095 () Bool)

(assert (=> b!439804 (=> (not res!260095) (not e!259189))))

(assert (=> b!439804 (= res!260095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!439805 () Bool)

(declare-fun res!260088 () Bool)

(assert (=> b!439805 (=> (not res!260088) (not e!259189))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!439805 (= res!260088 (and (= (size!13290 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13289 _keys!709) (size!13290 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!439800 () Bool)

(declare-fun e!259192 () Bool)

(assert (=> b!439800 (= e!259187 e!259192)))

(declare-fun res!260092 () Bool)

(assert (=> b!439800 (=> (not res!260092) (not e!259192))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!439800 (= res!260092 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16565)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!202405 () array!26983)

(declare-fun zeroValue!515 () V!16565)

(declare-datatypes ((tuple2!7684 0))(
  ( (tuple2!7685 (_1!3852 (_ BitVec 64)) (_2!3852 V!16565)) )
))
(declare-datatypes ((List!7727 0))(
  ( (Nil!7724) (Cons!7723 (h!8579 tuple2!7684) (t!13491 List!7727)) )
))
(declare-datatypes ((ListLongMap!6611 0))(
  ( (ListLongMap!6612 (toList!3321 List!7727)) )
))
(declare-fun lt!202407 () ListLongMap!6611)

(declare-fun getCurrentListMapNoExtraKeys!1503 (array!26981 array!26983 (_ BitVec 32) (_ BitVec 32) V!16565 V!16565 (_ BitVec 32) Int) ListLongMap!6611)

(assert (=> b!439800 (= lt!202407 (getCurrentListMapNoExtraKeys!1503 lt!202404 lt!202405 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16565)

(assert (=> b!439800 (= lt!202405 (array!26984 (store (arr!12938 _values!549) i!563 (ValueCellFull!5454 v!412)) (size!13290 _values!549)))))

(declare-fun lt!202406 () ListLongMap!6611)

(assert (=> b!439800 (= lt!202406 (getCurrentListMapNoExtraKeys!1503 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!260091 () Bool)

(assert (=> start!40184 (=> (not res!260091) (not e!259189))))

(assert (=> start!40184 (= res!260091 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13289 _keys!709))))))

(assert (=> start!40184 e!259189))

(assert (=> start!40184 tp_is_empty!11595))

(assert (=> start!40184 tp!36857))

(assert (=> start!40184 true))

(declare-fun array_inv!9384 (array!26983) Bool)

(assert (=> start!40184 (and (array_inv!9384 _values!549) e!259188)))

(declare-fun array_inv!9385 (array!26981) Bool)

(assert (=> start!40184 (array_inv!9385 _keys!709)))

(declare-fun b!439806 () Bool)

(declare-fun res!260093 () Bool)

(assert (=> b!439806 (=> (not res!260093) (not e!259187))))

(assert (=> b!439806 (= res!260093 (bvsle from!863 i!563))))

(declare-fun b!439807 () Bool)

(assert (=> b!439807 (= e!259192 (not true))))

(declare-fun +!1458 (ListLongMap!6611 tuple2!7684) ListLongMap!6611)

(assert (=> b!439807 (= (getCurrentListMapNoExtraKeys!1503 lt!202404 lt!202405 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1458 (getCurrentListMapNoExtraKeys!1503 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7685 k0!794 v!412)))))

(declare-datatypes ((Unit!13031 0))(
  ( (Unit!13032) )
))
(declare-fun lt!202403 () Unit!13031)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!636 (array!26981 array!26983 (_ BitVec 32) (_ BitVec 32) V!16565 V!16565 (_ BitVec 32) (_ BitVec 64) V!16565 (_ BitVec 32) Int) Unit!13031)

(assert (=> b!439807 (= lt!202403 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!636 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!439808 () Bool)

(declare-fun res!260094 () Bool)

(assert (=> b!439808 (=> (not res!260094) (not e!259189))))

(assert (=> b!439808 (= res!260094 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7723))))

(assert (= (and start!40184 res!260091) b!439794))

(assert (= (and b!439794 res!260089) b!439805))

(assert (= (and b!439805 res!260088) b!439804))

(assert (= (and b!439804 res!260095) b!439808))

(assert (= (and b!439808 res!260094) b!439803))

(assert (= (and b!439803 res!260086) b!439793))

(assert (= (and b!439793 res!260087) b!439798))

(assert (= (and b!439798 res!260085) b!439799))

(assert (= (and b!439799 res!260097) b!439801))

(assert (= (and b!439801 res!260090) b!439795))

(assert (= (and b!439795 res!260096) b!439806))

(assert (= (and b!439806 res!260093) b!439800))

(assert (= (and b!439800 res!260092) b!439807))

(assert (= (and b!439796 condMapEmpty!19014) mapIsEmpty!19014))

(assert (= (and b!439796 (not condMapEmpty!19014)) mapNonEmpty!19014))

(get-info :version)

(assert (= (and mapNonEmpty!19014 ((_ is ValueCellFull!5454) mapValue!19014)) b!439802))

(assert (= (and b!439796 ((_ is ValueCellFull!5454) mapDefault!19014)) b!439797))

(assert (= start!40184 b!439796))

(declare-fun m!426969 () Bool)

(assert (=> mapNonEmpty!19014 m!426969))

(declare-fun m!426971 () Bool)

(assert (=> b!439793 m!426971))

(declare-fun m!426973 () Bool)

(assert (=> b!439804 m!426973))

(declare-fun m!426975 () Bool)

(assert (=> b!439801 m!426975))

(declare-fun m!426977 () Bool)

(assert (=> b!439801 m!426977))

(declare-fun m!426979 () Bool)

(assert (=> b!439795 m!426979))

(declare-fun m!426981 () Bool)

(assert (=> b!439807 m!426981))

(declare-fun m!426983 () Bool)

(assert (=> b!439807 m!426983))

(assert (=> b!439807 m!426983))

(declare-fun m!426985 () Bool)

(assert (=> b!439807 m!426985))

(declare-fun m!426987 () Bool)

(assert (=> b!439807 m!426987))

(declare-fun m!426989 () Bool)

(assert (=> b!439794 m!426989))

(declare-fun m!426991 () Bool)

(assert (=> b!439799 m!426991))

(declare-fun m!426993 () Bool)

(assert (=> b!439800 m!426993))

(declare-fun m!426995 () Bool)

(assert (=> b!439800 m!426995))

(declare-fun m!426997 () Bool)

(assert (=> b!439800 m!426997))

(declare-fun m!426999 () Bool)

(assert (=> b!439798 m!426999))

(declare-fun m!427001 () Bool)

(assert (=> b!439808 m!427001))

(declare-fun m!427003 () Bool)

(assert (=> start!40184 m!427003))

(declare-fun m!427005 () Bool)

(assert (=> start!40184 m!427005))

(check-sat (not start!40184) (not b!439799) b_and!18429 (not b_next!10443) (not b!439807) tp_is_empty!11595 (not b!439794) (not b!439793) (not b!439804) (not b!439808) (not b!439795) (not b!439801) (not mapNonEmpty!19014) (not b!439800))
(check-sat b_and!18429 (not b_next!10443))
