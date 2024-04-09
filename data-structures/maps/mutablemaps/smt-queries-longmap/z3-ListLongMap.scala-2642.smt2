; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39680 () Bool)

(assert start!39680)

(declare-fun b_free!9939 () Bool)

(declare-fun b_next!9939 () Bool)

(assert (=> start!39680 (= b_free!9939 (not b_next!9939))))

(declare-fun tp!35345 () Bool)

(declare-fun b_and!17613 () Bool)

(assert (=> start!39680 (= tp!35345 b_and!17613)))

(declare-fun b!425756 () Bool)

(declare-fun e!252681 () Bool)

(declare-fun e!252679 () Bool)

(declare-fun mapRes!18258 () Bool)

(assert (=> b!425756 (= e!252681 (and e!252679 mapRes!18258))))

(declare-fun condMapEmpty!18258 () Bool)

(declare-datatypes ((V!15893 0))(
  ( (V!15894 (val!5590 Int)) )
))
(declare-datatypes ((ValueCell!5202 0))(
  ( (ValueCellFull!5202 (v!7833 V!15893)) (EmptyCell!5202) )
))
(declare-datatypes ((array!26007 0))(
  ( (array!26008 (arr!12450 (Array (_ BitVec 32) ValueCell!5202)) (size!12802 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26007)

(declare-fun mapDefault!18258 () ValueCell!5202)

(assert (=> b!425756 (= condMapEmpty!18258 (= (arr!12450 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5202)) mapDefault!18258)))))

(declare-fun b!425757 () Bool)

(declare-fun res!249468 () Bool)

(declare-fun e!252680 () Bool)

(assert (=> b!425757 (=> (not res!249468) (not e!252680))))

(declare-datatypes ((array!26009 0))(
  ( (array!26010 (arr!12451 (Array (_ BitVec 32) (_ BitVec 64))) (size!12803 (_ BitVec 32))) )
))
(declare-fun lt!194771 () array!26009)

(declare-datatypes ((List!7329 0))(
  ( (Nil!7326) (Cons!7325 (h!8181 (_ BitVec 64)) (t!12781 List!7329)) )
))
(declare-fun arrayNoDuplicates!0 (array!26009 (_ BitVec 32) List!7329) Bool)

(assert (=> b!425757 (= res!249468 (arrayNoDuplicates!0 lt!194771 #b00000000000000000000000000000000 Nil!7326))))

(declare-fun b!425758 () Bool)

(declare-fun res!249458 () Bool)

(declare-fun e!252684 () Bool)

(assert (=> b!425758 (=> (not res!249458) (not e!252684))))

(declare-fun _keys!709 () array!26009)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!425758 (= res!249458 (and (= (size!12802 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12803 _keys!709) (size!12802 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!425759 () Bool)

(declare-fun res!249467 () Bool)

(assert (=> b!425759 (=> (not res!249467) (not e!252684))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!425759 (= res!249467 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12803 _keys!709))))))

(declare-fun b!425760 () Bool)

(declare-fun tp_is_empty!11091 () Bool)

(assert (=> b!425760 (= e!252679 tp_is_empty!11091)))

(declare-fun res!249464 () Bool)

(assert (=> start!39680 (=> (not res!249464) (not e!252684))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39680 (= res!249464 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12803 _keys!709))))))

(assert (=> start!39680 e!252684))

(assert (=> start!39680 tp_is_empty!11091))

(assert (=> start!39680 tp!35345))

(assert (=> start!39680 true))

(declare-fun array_inv!9074 (array!26007) Bool)

(assert (=> start!39680 (and (array_inv!9074 _values!549) e!252681)))

(declare-fun array_inv!9075 (array!26009) Bool)

(assert (=> start!39680 (array_inv!9075 _keys!709)))

(declare-fun b!425761 () Bool)

(declare-fun res!249466 () Bool)

(assert (=> b!425761 (=> (not res!249466) (not e!252684))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!425761 (= res!249466 (validKeyInArray!0 k0!794))))

(declare-fun b!425762 () Bool)

(declare-fun res!249459 () Bool)

(assert (=> b!425762 (=> (not res!249459) (not e!252684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!425762 (= res!249459 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!18258 () Bool)

(assert (=> mapIsEmpty!18258 mapRes!18258))

(declare-fun b!425763 () Bool)

(declare-fun res!249461 () Bool)

(assert (=> b!425763 (=> (not res!249461) (not e!252684))))

(assert (=> b!425763 (= res!249461 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7326))))

(declare-fun b!425764 () Bool)

(declare-fun res!249460 () Bool)

(assert (=> b!425764 (=> (not res!249460) (not e!252680))))

(assert (=> b!425764 (= res!249460 (bvsle from!863 i!563))))

(declare-fun b!425765 () Bool)

(declare-fun e!252683 () Bool)

(assert (=> b!425765 (= e!252683 tp_is_empty!11091)))

(declare-fun b!425766 () Bool)

(declare-fun res!249457 () Bool)

(assert (=> b!425766 (=> (not res!249457) (not e!252684))))

(declare-fun arrayContainsKey!0 (array!26009 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!425766 (= res!249457 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!425767 () Bool)

(declare-fun e!252682 () Bool)

(assert (=> b!425767 (= e!252680 e!252682)))

(declare-fun res!249465 () Bool)

(assert (=> b!425767 (=> (not res!249465) (not e!252682))))

(assert (=> b!425767 (= res!249465 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!15893)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15893)

(declare-fun lt!194772 () array!26007)

(declare-datatypes ((tuple2!7284 0))(
  ( (tuple2!7285 (_1!3652 (_ BitVec 64)) (_2!3652 V!15893)) )
))
(declare-datatypes ((List!7330 0))(
  ( (Nil!7327) (Cons!7326 (h!8182 tuple2!7284) (t!12782 List!7330)) )
))
(declare-datatypes ((ListLongMap!6211 0))(
  ( (ListLongMap!6212 (toList!3121 List!7330)) )
))
(declare-fun lt!194773 () ListLongMap!6211)

(declare-fun getCurrentListMapNoExtraKeys!1322 (array!26009 array!26007 (_ BitVec 32) (_ BitVec 32) V!15893 V!15893 (_ BitVec 32) Int) ListLongMap!6211)

(assert (=> b!425767 (= lt!194773 (getCurrentListMapNoExtraKeys!1322 lt!194771 lt!194772 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15893)

(assert (=> b!425767 (= lt!194772 (array!26008 (store (arr!12450 _values!549) i!563 (ValueCellFull!5202 v!412)) (size!12802 _values!549)))))

(declare-fun lt!194775 () ListLongMap!6211)

(assert (=> b!425767 (= lt!194775 (getCurrentListMapNoExtraKeys!1322 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!425768 () Bool)

(assert (=> b!425768 (= e!252684 e!252680)))

(declare-fun res!249456 () Bool)

(assert (=> b!425768 (=> (not res!249456) (not e!252680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26009 (_ BitVec 32)) Bool)

(assert (=> b!425768 (= res!249456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194771 mask!1025))))

(assert (=> b!425768 (= lt!194771 (array!26010 (store (arr!12451 _keys!709) i!563 k0!794) (size!12803 _keys!709)))))

(declare-fun b!425769 () Bool)

(assert (=> b!425769 (= e!252682 (not true))))

(declare-fun +!1279 (ListLongMap!6211 tuple2!7284) ListLongMap!6211)

(assert (=> b!425769 (= (getCurrentListMapNoExtraKeys!1322 lt!194771 lt!194772 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1279 (getCurrentListMapNoExtraKeys!1322 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7285 k0!794 v!412)))))

(declare-datatypes ((Unit!12461 0))(
  ( (Unit!12462) )
))
(declare-fun lt!194774 () Unit!12461)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!481 (array!26009 array!26007 (_ BitVec 32) (_ BitVec 32) V!15893 V!15893 (_ BitVec 32) (_ BitVec 64) V!15893 (_ BitVec 32) Int) Unit!12461)

(assert (=> b!425769 (= lt!194774 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!481 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!18258 () Bool)

(declare-fun tp!35346 () Bool)

(assert (=> mapNonEmpty!18258 (= mapRes!18258 (and tp!35346 e!252683))))

(declare-fun mapKey!18258 () (_ BitVec 32))

(declare-fun mapValue!18258 () ValueCell!5202)

(declare-fun mapRest!18258 () (Array (_ BitVec 32) ValueCell!5202))

(assert (=> mapNonEmpty!18258 (= (arr!12450 _values!549) (store mapRest!18258 mapKey!18258 mapValue!18258))))

(declare-fun b!425770 () Bool)

(declare-fun res!249462 () Bool)

(assert (=> b!425770 (=> (not res!249462) (not e!252684))))

(assert (=> b!425770 (= res!249462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!425771 () Bool)

(declare-fun res!249463 () Bool)

(assert (=> b!425771 (=> (not res!249463) (not e!252684))))

(assert (=> b!425771 (= res!249463 (or (= (select (arr!12451 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12451 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!39680 res!249464) b!425762))

(assert (= (and b!425762 res!249459) b!425758))

(assert (= (and b!425758 res!249458) b!425770))

(assert (= (and b!425770 res!249462) b!425763))

(assert (= (and b!425763 res!249461) b!425759))

(assert (= (and b!425759 res!249467) b!425761))

(assert (= (and b!425761 res!249466) b!425771))

(assert (= (and b!425771 res!249463) b!425766))

(assert (= (and b!425766 res!249457) b!425768))

(assert (= (and b!425768 res!249456) b!425757))

(assert (= (and b!425757 res!249468) b!425764))

(assert (= (and b!425764 res!249460) b!425767))

(assert (= (and b!425767 res!249465) b!425769))

(assert (= (and b!425756 condMapEmpty!18258) mapIsEmpty!18258))

(assert (= (and b!425756 (not condMapEmpty!18258)) mapNonEmpty!18258))

(get-info :version)

(assert (= (and mapNonEmpty!18258 ((_ is ValueCellFull!5202) mapValue!18258)) b!425765))

(assert (= (and b!425756 ((_ is ValueCellFull!5202) mapDefault!18258)) b!425760))

(assert (= start!39680 b!425756))

(declare-fun m!414585 () Bool)

(assert (=> b!425770 m!414585))

(declare-fun m!414587 () Bool)

(assert (=> b!425768 m!414587))

(declare-fun m!414589 () Bool)

(assert (=> b!425768 m!414589))

(declare-fun m!414591 () Bool)

(assert (=> b!425771 m!414591))

(declare-fun m!414593 () Bool)

(assert (=> b!425767 m!414593))

(declare-fun m!414595 () Bool)

(assert (=> b!425767 m!414595))

(declare-fun m!414597 () Bool)

(assert (=> b!425767 m!414597))

(declare-fun m!414599 () Bool)

(assert (=> start!39680 m!414599))

(declare-fun m!414601 () Bool)

(assert (=> start!39680 m!414601))

(declare-fun m!414603 () Bool)

(assert (=> b!425757 m!414603))

(declare-fun m!414605 () Bool)

(assert (=> b!425762 m!414605))

(declare-fun m!414607 () Bool)

(assert (=> b!425763 m!414607))

(declare-fun m!414609 () Bool)

(assert (=> mapNonEmpty!18258 m!414609))

(declare-fun m!414611 () Bool)

(assert (=> b!425761 m!414611))

(declare-fun m!414613 () Bool)

(assert (=> b!425769 m!414613))

(declare-fun m!414615 () Bool)

(assert (=> b!425769 m!414615))

(assert (=> b!425769 m!414615))

(declare-fun m!414617 () Bool)

(assert (=> b!425769 m!414617))

(declare-fun m!414619 () Bool)

(assert (=> b!425769 m!414619))

(declare-fun m!414621 () Bool)

(assert (=> b!425766 m!414621))

(check-sat (not b!425761) (not b!425769) b_and!17613 (not b_next!9939) (not b!425767) (not b!425770) (not b!425757) (not b!425768) (not b!425763) (not b!425766) tp_is_empty!11091 (not b!425762) (not start!39680) (not mapNonEmpty!18258))
(check-sat b_and!17613 (not b_next!9939))
