; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40172 () Bool)

(assert start!40172)

(declare-fun b_free!10431 () Bool)

(declare-fun b_next!10431 () Bool)

(assert (=> start!40172 (= b_free!10431 (not b_next!10431))))

(declare-fun tp!36821 () Bool)

(declare-fun b_and!18417 () Bool)

(assert (=> start!40172 (= tp!36821 b_and!18417)))

(declare-fun b!439505 () Bool)

(declare-fun res!259858 () Bool)

(declare-fun e!259061 () Bool)

(assert (=> b!439505 (=> (not res!259858) (not e!259061))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!439505 (= res!259858 (validKeyInArray!0 k0!794))))

(declare-fun b!439506 () Bool)

(declare-fun e!259063 () Bool)

(declare-fun tp_is_empty!11583 () Bool)

(assert (=> b!439506 (= e!259063 tp_is_empty!11583)))

(declare-fun b!439507 () Bool)

(declare-fun res!259861 () Bool)

(declare-fun e!259065 () Bool)

(assert (=> b!439507 (=> (not res!259861) (not e!259065))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!439507 (= res!259861 (bvsle from!863 i!563))))

(declare-fun b!439508 () Bool)

(declare-fun res!259856 () Bool)

(assert (=> b!439508 (=> (not res!259856) (not e!259061))))

(declare-datatypes ((array!26957 0))(
  ( (array!26958 (arr!12925 (Array (_ BitVec 32) (_ BitVec 64))) (size!13277 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26957)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16549 0))(
  ( (V!16550 (val!5836 Int)) )
))
(declare-datatypes ((ValueCell!5448 0))(
  ( (ValueCellFull!5448 (v!8079 V!16549)) (EmptyCell!5448) )
))
(declare-datatypes ((array!26959 0))(
  ( (array!26960 (arr!12926 (Array (_ BitVec 32) ValueCell!5448)) (size!13278 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26959)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!439508 (= res!259856 (and (= (size!13278 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13277 _keys!709) (size!13278 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!439510 () Bool)

(declare-fun res!259862 () Bool)

(assert (=> b!439510 (=> (not res!259862) (not e!259061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!439510 (= res!259862 (validMask!0 mask!1025))))

(declare-fun b!439511 () Bool)

(declare-fun res!259855 () Bool)

(assert (=> b!439511 (=> (not res!259855) (not e!259061))))

(declare-fun arrayContainsKey!0 (array!26957 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!439511 (= res!259855 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!439512 () Bool)

(assert (=> b!439512 (= e!259061 e!259065)))

(declare-fun res!259859 () Bool)

(assert (=> b!439512 (=> (not res!259859) (not e!259065))))

(declare-fun lt!202315 () array!26957)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26957 (_ BitVec 32)) Bool)

(assert (=> b!439512 (= res!259859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202315 mask!1025))))

(assert (=> b!439512 (= lt!202315 (array!26958 (store (arr!12925 _keys!709) i!563 k0!794) (size!13277 _keys!709)))))

(declare-fun mapNonEmpty!18996 () Bool)

(declare-fun mapRes!18996 () Bool)

(declare-fun tp!36822 () Bool)

(assert (=> mapNonEmpty!18996 (= mapRes!18996 (and tp!36822 e!259063))))

(declare-fun mapValue!18996 () ValueCell!5448)

(declare-fun mapKey!18996 () (_ BitVec 32))

(declare-fun mapRest!18996 () (Array (_ BitVec 32) ValueCell!5448))

(assert (=> mapNonEmpty!18996 (= (arr!12926 _values!549) (store mapRest!18996 mapKey!18996 mapValue!18996))))

(declare-fun b!439513 () Bool)

(declare-fun e!259064 () Bool)

(assert (=> b!439513 (= e!259064 (not true))))

(declare-fun minValue!515 () V!16549)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!202316 () array!26959)

(declare-fun zeroValue!515 () V!16549)

(declare-fun v!412 () V!16549)

(declare-datatypes ((tuple2!7672 0))(
  ( (tuple2!7673 (_1!3846 (_ BitVec 64)) (_2!3846 V!16549)) )
))
(declare-datatypes ((List!7715 0))(
  ( (Nil!7712) (Cons!7711 (h!8567 tuple2!7672) (t!13479 List!7715)) )
))
(declare-datatypes ((ListLongMap!6599 0))(
  ( (ListLongMap!6600 (toList!3315 List!7715)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1497 (array!26957 array!26959 (_ BitVec 32) (_ BitVec 32) V!16549 V!16549 (_ BitVec 32) Int) ListLongMap!6599)

(declare-fun +!1454 (ListLongMap!6599 tuple2!7672) ListLongMap!6599)

(assert (=> b!439513 (= (getCurrentListMapNoExtraKeys!1497 lt!202315 lt!202316 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1454 (getCurrentListMapNoExtraKeys!1497 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7673 k0!794 v!412)))))

(declare-datatypes ((Unit!13023 0))(
  ( (Unit!13024) )
))
(declare-fun lt!202314 () Unit!13023)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!632 (array!26957 array!26959 (_ BitVec 32) (_ BitVec 32) V!16549 V!16549 (_ BitVec 32) (_ BitVec 64) V!16549 (_ BitVec 32) Int) Unit!13023)

(assert (=> b!439513 (= lt!202314 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!632 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!439514 () Bool)

(declare-fun e!259066 () Bool)

(assert (=> b!439514 (= e!259066 tp_is_empty!11583)))

(declare-fun b!439515 () Bool)

(declare-fun res!259860 () Bool)

(assert (=> b!439515 (=> (not res!259860) (not e!259061))))

(assert (=> b!439515 (= res!259860 (or (= (select (arr!12925 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12925 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18996 () Bool)

(assert (=> mapIsEmpty!18996 mapRes!18996))

(declare-fun b!439516 () Bool)

(declare-fun res!259854 () Bool)

(assert (=> b!439516 (=> (not res!259854) (not e!259065))))

(declare-datatypes ((List!7716 0))(
  ( (Nil!7713) (Cons!7712 (h!8568 (_ BitVec 64)) (t!13480 List!7716)) )
))
(declare-fun arrayNoDuplicates!0 (array!26957 (_ BitVec 32) List!7716) Bool)

(assert (=> b!439516 (= res!259854 (arrayNoDuplicates!0 lt!202315 #b00000000000000000000000000000000 Nil!7713))))

(declare-fun b!439517 () Bool)

(declare-fun res!259852 () Bool)

(assert (=> b!439517 (=> (not res!259852) (not e!259061))))

(assert (=> b!439517 (= res!259852 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13277 _keys!709))))))

(declare-fun b!439518 () Bool)

(declare-fun res!259863 () Bool)

(assert (=> b!439518 (=> (not res!259863) (not e!259061))))

(assert (=> b!439518 (= res!259863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!439519 () Bool)

(declare-fun e!259060 () Bool)

(assert (=> b!439519 (= e!259060 (and e!259066 mapRes!18996))))

(declare-fun condMapEmpty!18996 () Bool)

(declare-fun mapDefault!18996 () ValueCell!5448)

(assert (=> b!439519 (= condMapEmpty!18996 (= (arr!12926 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5448)) mapDefault!18996)))))

(declare-fun b!439520 () Bool)

(assert (=> b!439520 (= e!259065 e!259064)))

(declare-fun res!259857 () Bool)

(assert (=> b!439520 (=> (not res!259857) (not e!259064))))

(assert (=> b!439520 (= res!259857 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202317 () ListLongMap!6599)

(assert (=> b!439520 (= lt!202317 (getCurrentListMapNoExtraKeys!1497 lt!202315 lt!202316 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!439520 (= lt!202316 (array!26960 (store (arr!12926 _values!549) i!563 (ValueCellFull!5448 v!412)) (size!13278 _values!549)))))

(declare-fun lt!202313 () ListLongMap!6599)

(assert (=> b!439520 (= lt!202313 (getCurrentListMapNoExtraKeys!1497 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!439509 () Bool)

(declare-fun res!259853 () Bool)

(assert (=> b!439509 (=> (not res!259853) (not e!259061))))

(assert (=> b!439509 (= res!259853 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7713))))

(declare-fun res!259851 () Bool)

(assert (=> start!40172 (=> (not res!259851) (not e!259061))))

(assert (=> start!40172 (= res!259851 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13277 _keys!709))))))

(assert (=> start!40172 e!259061))

(assert (=> start!40172 tp_is_empty!11583))

(assert (=> start!40172 tp!36821))

(assert (=> start!40172 true))

(declare-fun array_inv!9374 (array!26959) Bool)

(assert (=> start!40172 (and (array_inv!9374 _values!549) e!259060)))

(declare-fun array_inv!9375 (array!26957) Bool)

(assert (=> start!40172 (array_inv!9375 _keys!709)))

(assert (= (and start!40172 res!259851) b!439510))

(assert (= (and b!439510 res!259862) b!439508))

(assert (= (and b!439508 res!259856) b!439518))

(assert (= (and b!439518 res!259863) b!439509))

(assert (= (and b!439509 res!259853) b!439517))

(assert (= (and b!439517 res!259852) b!439505))

(assert (= (and b!439505 res!259858) b!439515))

(assert (= (and b!439515 res!259860) b!439511))

(assert (= (and b!439511 res!259855) b!439512))

(assert (= (and b!439512 res!259859) b!439516))

(assert (= (and b!439516 res!259854) b!439507))

(assert (= (and b!439507 res!259861) b!439520))

(assert (= (and b!439520 res!259857) b!439513))

(assert (= (and b!439519 condMapEmpty!18996) mapIsEmpty!18996))

(assert (= (and b!439519 (not condMapEmpty!18996)) mapNonEmpty!18996))

(get-info :version)

(assert (= (and mapNonEmpty!18996 ((_ is ValueCellFull!5448) mapValue!18996)) b!439506))

(assert (= (and b!439519 ((_ is ValueCellFull!5448) mapDefault!18996)) b!439514))

(assert (= start!40172 b!439519))

(declare-fun m!426741 () Bool)

(assert (=> mapNonEmpty!18996 m!426741))

(declare-fun m!426743 () Bool)

(assert (=> b!439510 m!426743))

(declare-fun m!426745 () Bool)

(assert (=> b!439505 m!426745))

(declare-fun m!426747 () Bool)

(assert (=> b!439513 m!426747))

(declare-fun m!426749 () Bool)

(assert (=> b!439513 m!426749))

(assert (=> b!439513 m!426749))

(declare-fun m!426751 () Bool)

(assert (=> b!439513 m!426751))

(declare-fun m!426753 () Bool)

(assert (=> b!439513 m!426753))

(declare-fun m!426755 () Bool)

(assert (=> b!439515 m!426755))

(declare-fun m!426757 () Bool)

(assert (=> b!439520 m!426757))

(declare-fun m!426759 () Bool)

(assert (=> b!439520 m!426759))

(declare-fun m!426761 () Bool)

(assert (=> b!439520 m!426761))

(declare-fun m!426763 () Bool)

(assert (=> b!439511 m!426763))

(declare-fun m!426765 () Bool)

(assert (=> b!439518 m!426765))

(declare-fun m!426767 () Bool)

(assert (=> start!40172 m!426767))

(declare-fun m!426769 () Bool)

(assert (=> start!40172 m!426769))

(declare-fun m!426771 () Bool)

(assert (=> b!439509 m!426771))

(declare-fun m!426773 () Bool)

(assert (=> b!439516 m!426773))

(declare-fun m!426775 () Bool)

(assert (=> b!439512 m!426775))

(declare-fun m!426777 () Bool)

(assert (=> b!439512 m!426777))

(check-sat (not b!439509) (not b!439516) (not mapNonEmpty!18996) (not b!439518) (not b!439511) (not b!439520) (not b_next!10431) (not b!439505) tp_is_empty!11583 (not b!439513) (not start!40172) (not b!439510) (not b!439512) b_and!18417)
(check-sat b_and!18417 (not b_next!10431))
