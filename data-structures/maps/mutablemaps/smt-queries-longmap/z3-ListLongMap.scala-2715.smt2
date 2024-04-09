; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40118 () Bool)

(assert start!40118)

(declare-fun b_free!10377 () Bool)

(declare-fun b_next!10377 () Bool)

(assert (=> start!40118 (= b_free!10377 (not b_next!10377))))

(declare-fun tp!36659 () Bool)

(declare-fun b_and!18363 () Bool)

(assert (=> start!40118 (= tp!36659 b_and!18363)))

(declare-fun b!438209 () Bool)

(declare-fun res!258799 () Bool)

(declare-fun e!258498 () Bool)

(assert (=> b!438209 (=> (not res!258799) (not e!258498))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!438209 (= res!258799 (bvsle from!863 i!563))))

(declare-fun b!438210 () Bool)

(declare-fun res!258801 () Bool)

(declare-fun e!258497 () Bool)

(assert (=> b!438210 (=> (not res!258801) (not e!258497))))

(declare-datatypes ((array!26855 0))(
  ( (array!26856 (arr!12874 (Array (_ BitVec 32) (_ BitVec 64))) (size!13226 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26855)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16477 0))(
  ( (V!16478 (val!5809 Int)) )
))
(declare-datatypes ((ValueCell!5421 0))(
  ( (ValueCellFull!5421 (v!8052 V!16477)) (EmptyCell!5421) )
))
(declare-datatypes ((array!26857 0))(
  ( (array!26858 (arr!12875 (Array (_ BitVec 32) ValueCell!5421)) (size!13227 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26857)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!438210 (= res!258801 (and (= (size!13227 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13226 _keys!709) (size!13227 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!438211 () Bool)

(declare-fun res!258807 () Bool)

(assert (=> b!438211 (=> (not res!258807) (not e!258497))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!438211 (= res!258807 (validMask!0 mask!1025))))

(declare-fun b!438212 () Bool)

(declare-fun res!258808 () Bool)

(assert (=> b!438212 (=> (not res!258808) (not e!258497))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26855 (_ BitVec 32)) Bool)

(assert (=> b!438212 (= res!258808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!438213 () Bool)

(declare-fun e!258499 () Bool)

(assert (=> b!438213 (= e!258499 (not true))))

(declare-fun lt!201912 () array!26857)

(declare-fun minValue!515 () V!16477)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16477)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!201911 () array!26855)

(declare-fun v!412 () V!16477)

(declare-datatypes ((tuple2!7636 0))(
  ( (tuple2!7637 (_1!3828 (_ BitVec 64)) (_2!3828 V!16477)) )
))
(declare-datatypes ((List!7679 0))(
  ( (Nil!7676) (Cons!7675 (h!8531 tuple2!7636) (t!13443 List!7679)) )
))
(declare-datatypes ((ListLongMap!6563 0))(
  ( (ListLongMap!6564 (toList!3297 List!7679)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1479 (array!26855 array!26857 (_ BitVec 32) (_ BitVec 32) V!16477 V!16477 (_ BitVec 32) Int) ListLongMap!6563)

(declare-fun +!1438 (ListLongMap!6563 tuple2!7636) ListLongMap!6563)

(assert (=> b!438213 (= (getCurrentListMapNoExtraKeys!1479 lt!201911 lt!201912 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1438 (getCurrentListMapNoExtraKeys!1479 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7637 k0!794 v!412)))))

(declare-datatypes ((Unit!12991 0))(
  ( (Unit!12992) )
))
(declare-fun lt!201909 () Unit!12991)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!616 (array!26855 array!26857 (_ BitVec 32) (_ BitVec 32) V!16477 V!16477 (_ BitVec 32) (_ BitVec 64) V!16477 (_ BitVec 32) Int) Unit!12991)

(assert (=> b!438213 (= lt!201909 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!616 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!18915 () Bool)

(declare-fun mapRes!18915 () Bool)

(assert (=> mapIsEmpty!18915 mapRes!18915))

(declare-fun b!438214 () Bool)

(declare-fun e!258494 () Bool)

(declare-fun tp_is_empty!11529 () Bool)

(assert (=> b!438214 (= e!258494 tp_is_empty!11529)))

(declare-fun b!438215 () Bool)

(declare-fun e!258493 () Bool)

(assert (=> b!438215 (= e!258493 tp_is_empty!11529)))

(declare-fun res!258798 () Bool)

(assert (=> start!40118 (=> (not res!258798) (not e!258497))))

(assert (=> start!40118 (= res!258798 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13226 _keys!709))))))

(assert (=> start!40118 e!258497))

(assert (=> start!40118 tp_is_empty!11529))

(assert (=> start!40118 tp!36659))

(assert (=> start!40118 true))

(declare-fun e!258496 () Bool)

(declare-fun array_inv!9346 (array!26857) Bool)

(assert (=> start!40118 (and (array_inv!9346 _values!549) e!258496)))

(declare-fun array_inv!9347 (array!26855) Bool)

(assert (=> start!40118 (array_inv!9347 _keys!709)))

(declare-fun mapNonEmpty!18915 () Bool)

(declare-fun tp!36660 () Bool)

(assert (=> mapNonEmpty!18915 (= mapRes!18915 (and tp!36660 e!258493))))

(declare-fun mapRest!18915 () (Array (_ BitVec 32) ValueCell!5421))

(declare-fun mapKey!18915 () (_ BitVec 32))

(declare-fun mapValue!18915 () ValueCell!5421)

(assert (=> mapNonEmpty!18915 (= (arr!12875 _values!549) (store mapRest!18915 mapKey!18915 mapValue!18915))))

(declare-fun b!438216 () Bool)

(declare-fun res!258810 () Bool)

(assert (=> b!438216 (=> (not res!258810) (not e!258497))))

(assert (=> b!438216 (= res!258810 (or (= (select (arr!12874 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12874 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!438217 () Bool)

(declare-fun res!258804 () Bool)

(assert (=> b!438217 (=> (not res!258804) (not e!258498))))

(declare-datatypes ((List!7680 0))(
  ( (Nil!7677) (Cons!7676 (h!8532 (_ BitVec 64)) (t!13444 List!7680)) )
))
(declare-fun arrayNoDuplicates!0 (array!26855 (_ BitVec 32) List!7680) Bool)

(assert (=> b!438217 (= res!258804 (arrayNoDuplicates!0 lt!201911 #b00000000000000000000000000000000 Nil!7677))))

(declare-fun b!438218 () Bool)

(assert (=> b!438218 (= e!258498 e!258499)))

(declare-fun res!258802 () Bool)

(assert (=> b!438218 (=> (not res!258802) (not e!258499))))

(assert (=> b!438218 (= res!258802 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!201910 () ListLongMap!6563)

(assert (=> b!438218 (= lt!201910 (getCurrentListMapNoExtraKeys!1479 lt!201911 lt!201912 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!438218 (= lt!201912 (array!26858 (store (arr!12875 _values!549) i!563 (ValueCellFull!5421 v!412)) (size!13227 _values!549)))))

(declare-fun lt!201908 () ListLongMap!6563)

(assert (=> b!438218 (= lt!201908 (getCurrentListMapNoExtraKeys!1479 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!438219 () Bool)

(declare-fun res!258806 () Bool)

(assert (=> b!438219 (=> (not res!258806) (not e!258497))))

(assert (=> b!438219 (= res!258806 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13226 _keys!709))))))

(declare-fun b!438220 () Bool)

(declare-fun res!258805 () Bool)

(assert (=> b!438220 (=> (not res!258805) (not e!258497))))

(assert (=> b!438220 (= res!258805 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7677))))

(declare-fun b!438221 () Bool)

(assert (=> b!438221 (= e!258497 e!258498)))

(declare-fun res!258809 () Bool)

(assert (=> b!438221 (=> (not res!258809) (not e!258498))))

(assert (=> b!438221 (= res!258809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201911 mask!1025))))

(assert (=> b!438221 (= lt!201911 (array!26856 (store (arr!12874 _keys!709) i!563 k0!794) (size!13226 _keys!709)))))

(declare-fun b!438222 () Bool)

(assert (=> b!438222 (= e!258496 (and e!258494 mapRes!18915))))

(declare-fun condMapEmpty!18915 () Bool)

(declare-fun mapDefault!18915 () ValueCell!5421)

(assert (=> b!438222 (= condMapEmpty!18915 (= (arr!12875 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5421)) mapDefault!18915)))))

(declare-fun b!438223 () Bool)

(declare-fun res!258800 () Bool)

(assert (=> b!438223 (=> (not res!258800) (not e!258497))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!438223 (= res!258800 (validKeyInArray!0 k0!794))))

(declare-fun b!438224 () Bool)

(declare-fun res!258803 () Bool)

(assert (=> b!438224 (=> (not res!258803) (not e!258497))))

(declare-fun arrayContainsKey!0 (array!26855 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!438224 (= res!258803 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!40118 res!258798) b!438211))

(assert (= (and b!438211 res!258807) b!438210))

(assert (= (and b!438210 res!258801) b!438212))

(assert (= (and b!438212 res!258808) b!438220))

(assert (= (and b!438220 res!258805) b!438219))

(assert (= (and b!438219 res!258806) b!438223))

(assert (= (and b!438223 res!258800) b!438216))

(assert (= (and b!438216 res!258810) b!438224))

(assert (= (and b!438224 res!258803) b!438221))

(assert (= (and b!438221 res!258809) b!438217))

(assert (= (and b!438217 res!258804) b!438209))

(assert (= (and b!438209 res!258799) b!438218))

(assert (= (and b!438218 res!258802) b!438213))

(assert (= (and b!438222 condMapEmpty!18915) mapIsEmpty!18915))

(assert (= (and b!438222 (not condMapEmpty!18915)) mapNonEmpty!18915))

(get-info :version)

(assert (= (and mapNonEmpty!18915 ((_ is ValueCellFull!5421) mapValue!18915)) b!438215))

(assert (= (and b!438222 ((_ is ValueCellFull!5421) mapDefault!18915)) b!438214))

(assert (= start!40118 b!438222))

(declare-fun m!425715 () Bool)

(assert (=> b!438217 m!425715))

(declare-fun m!425717 () Bool)

(assert (=> b!438221 m!425717))

(declare-fun m!425719 () Bool)

(assert (=> b!438221 m!425719))

(declare-fun m!425721 () Bool)

(assert (=> b!438224 m!425721))

(declare-fun m!425723 () Bool)

(assert (=> b!438220 m!425723))

(declare-fun m!425725 () Bool)

(assert (=> b!438211 m!425725))

(declare-fun m!425727 () Bool)

(assert (=> b!438216 m!425727))

(declare-fun m!425729 () Bool)

(assert (=> b!438223 m!425729))

(declare-fun m!425731 () Bool)

(assert (=> b!438212 m!425731))

(declare-fun m!425733 () Bool)

(assert (=> b!438213 m!425733))

(declare-fun m!425735 () Bool)

(assert (=> b!438213 m!425735))

(assert (=> b!438213 m!425735))

(declare-fun m!425737 () Bool)

(assert (=> b!438213 m!425737))

(declare-fun m!425739 () Bool)

(assert (=> b!438213 m!425739))

(declare-fun m!425741 () Bool)

(assert (=> mapNonEmpty!18915 m!425741))

(declare-fun m!425743 () Bool)

(assert (=> start!40118 m!425743))

(declare-fun m!425745 () Bool)

(assert (=> start!40118 m!425745))

(declare-fun m!425747 () Bool)

(assert (=> b!438218 m!425747))

(declare-fun m!425749 () Bool)

(assert (=> b!438218 m!425749))

(declare-fun m!425751 () Bool)

(assert (=> b!438218 m!425751))

(check-sat tp_is_empty!11529 (not b!438218) (not b!438220) (not b!438224) (not b_next!10377) (not mapNonEmpty!18915) (not b!438217) (not b!438221) (not b!438211) (not b!438223) (not b!438213) b_and!18363 (not start!40118) (not b!438212))
(check-sat b_and!18363 (not b_next!10377))
