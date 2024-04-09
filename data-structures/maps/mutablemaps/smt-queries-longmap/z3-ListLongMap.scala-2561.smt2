; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39194 () Bool)

(assert start!39194)

(declare-fun b_free!9453 () Bool)

(declare-fun b_next!9453 () Bool)

(assert (=> start!39194 (= b_free!9453 (not b_next!9453))))

(declare-fun tp!33887 () Bool)

(declare-fun b_and!16857 () Bool)

(assert (=> start!39194 (= tp!33887 b_and!16857)))

(declare-fun b!412602 () Bool)

(declare-fun res!239731 () Bool)

(declare-fun e!246844 () Bool)

(assert (=> b!412602 (=> (not res!239731) (not e!246844))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25049 0))(
  ( (array!25050 (arr!11971 (Array (_ BitVec 32) (_ BitVec 64))) (size!12323 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25049)

(assert (=> b!412602 (= res!239731 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12323 _keys!709))))))

(declare-fun b!412603 () Bool)

(declare-fun res!239734 () Bool)

(assert (=> b!412603 (=> (not res!239734) (not e!246844))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25049 (_ BitVec 32)) Bool)

(assert (=> b!412603 (= res!239734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!412604 () Bool)

(declare-fun e!246847 () Bool)

(declare-fun tp_is_empty!10605 () Bool)

(assert (=> b!412604 (= e!246847 tp_is_empty!10605)))

(declare-fun mapIsEmpty!17529 () Bool)

(declare-fun mapRes!17529 () Bool)

(assert (=> mapIsEmpty!17529 mapRes!17529))

(declare-fun b!412605 () Bool)

(declare-fun res!239740 () Bool)

(assert (=> b!412605 (=> (not res!239740) (not e!246844))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25049 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!412605 (= res!239740 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!412606 () Bool)

(declare-fun res!239732 () Bool)

(assert (=> b!412606 (=> (not res!239732) (not e!246844))))

(assert (=> b!412606 (= res!239732 (or (= (select (arr!11971 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11971 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!412607 () Bool)

(declare-fun res!239741 () Bool)

(assert (=> b!412607 (=> (not res!239741) (not e!246844))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15245 0))(
  ( (V!15246 (val!5347 Int)) )
))
(declare-datatypes ((ValueCell!4959 0))(
  ( (ValueCellFull!4959 (v!7590 V!15245)) (EmptyCell!4959) )
))
(declare-datatypes ((array!25051 0))(
  ( (array!25052 (arr!11972 (Array (_ BitVec 32) ValueCell!4959)) (size!12324 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25051)

(assert (=> b!412607 (= res!239741 (and (= (size!12324 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12323 _keys!709) (size!12324 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!239738 () Bool)

(assert (=> start!39194 (=> (not res!239738) (not e!246844))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39194 (= res!239738 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12323 _keys!709))))))

(assert (=> start!39194 e!246844))

(assert (=> start!39194 tp_is_empty!10605))

(assert (=> start!39194 tp!33887))

(assert (=> start!39194 true))

(declare-fun e!246846 () Bool)

(declare-fun array_inv!8726 (array!25051) Bool)

(assert (=> start!39194 (and (array_inv!8726 _values!549) e!246846)))

(declare-fun array_inv!8727 (array!25049) Bool)

(assert (=> start!39194 (array_inv!8727 _keys!709)))

(declare-fun mapNonEmpty!17529 () Bool)

(declare-fun tp!33888 () Bool)

(declare-fun e!246843 () Bool)

(assert (=> mapNonEmpty!17529 (= mapRes!17529 (and tp!33888 e!246843))))

(declare-fun mapKey!17529 () (_ BitVec 32))

(declare-fun mapValue!17529 () ValueCell!4959)

(declare-fun mapRest!17529 () (Array (_ BitVec 32) ValueCell!4959))

(assert (=> mapNonEmpty!17529 (= (arr!11972 _values!549) (store mapRest!17529 mapKey!17529 mapValue!17529))))

(declare-fun b!412608 () Bool)

(assert (=> b!412608 (= e!246843 tp_is_empty!10605)))

(declare-fun b!412609 () Bool)

(declare-fun res!239737 () Bool)

(declare-fun e!246845 () Bool)

(assert (=> b!412609 (=> (not res!239737) (not e!246845))))

(assert (=> b!412609 (= res!239737 (bvsle from!863 i!563))))

(declare-fun b!412610 () Bool)

(assert (=> b!412610 (= e!246845 false)))

(declare-fun minValue!515 () V!15245)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15245)

(declare-datatypes ((tuple2!6862 0))(
  ( (tuple2!6863 (_1!3441 (_ BitVec 64)) (_2!3441 V!15245)) )
))
(declare-datatypes ((List!6924 0))(
  ( (Nil!6921) (Cons!6920 (h!7776 tuple2!6862) (t!12106 List!6924)) )
))
(declare-datatypes ((ListLongMap!5789 0))(
  ( (ListLongMap!5790 (toList!2910 List!6924)) )
))
(declare-fun lt!189516 () ListLongMap!5789)

(declare-fun lt!189515 () array!25049)

(declare-fun v!412 () V!15245)

(declare-fun getCurrentListMapNoExtraKeys!1120 (array!25049 array!25051 (_ BitVec 32) (_ BitVec 32) V!15245 V!15245 (_ BitVec 32) Int) ListLongMap!5789)

(assert (=> b!412610 (= lt!189516 (getCurrentListMapNoExtraKeys!1120 lt!189515 (array!25052 (store (arr!11972 _values!549) i!563 (ValueCellFull!4959 v!412)) (size!12324 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189514 () ListLongMap!5789)

(assert (=> b!412610 (= lt!189514 (getCurrentListMapNoExtraKeys!1120 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!412611 () Bool)

(declare-fun res!239736 () Bool)

(assert (=> b!412611 (=> (not res!239736) (not e!246845))))

(declare-datatypes ((List!6925 0))(
  ( (Nil!6922) (Cons!6921 (h!7777 (_ BitVec 64)) (t!12107 List!6925)) )
))
(declare-fun arrayNoDuplicates!0 (array!25049 (_ BitVec 32) List!6925) Bool)

(assert (=> b!412611 (= res!239736 (arrayNoDuplicates!0 lt!189515 #b00000000000000000000000000000000 Nil!6922))))

(declare-fun b!412612 () Bool)

(declare-fun res!239739 () Bool)

(assert (=> b!412612 (=> (not res!239739) (not e!246844))))

(assert (=> b!412612 (= res!239739 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6922))))

(declare-fun b!412613 () Bool)

(assert (=> b!412613 (= e!246846 (and e!246847 mapRes!17529))))

(declare-fun condMapEmpty!17529 () Bool)

(declare-fun mapDefault!17529 () ValueCell!4959)

(assert (=> b!412613 (= condMapEmpty!17529 (= (arr!11972 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4959)) mapDefault!17529)))))

(declare-fun b!412614 () Bool)

(declare-fun res!239742 () Bool)

(assert (=> b!412614 (=> (not res!239742) (not e!246844))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!412614 (= res!239742 (validKeyInArray!0 k0!794))))

(declare-fun b!412615 () Bool)

(declare-fun res!239735 () Bool)

(assert (=> b!412615 (=> (not res!239735) (not e!246844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!412615 (= res!239735 (validMask!0 mask!1025))))

(declare-fun b!412616 () Bool)

(assert (=> b!412616 (= e!246844 e!246845)))

(declare-fun res!239733 () Bool)

(assert (=> b!412616 (=> (not res!239733) (not e!246845))))

(assert (=> b!412616 (= res!239733 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189515 mask!1025))))

(assert (=> b!412616 (= lt!189515 (array!25050 (store (arr!11971 _keys!709) i!563 k0!794) (size!12323 _keys!709)))))

(assert (= (and start!39194 res!239738) b!412615))

(assert (= (and b!412615 res!239735) b!412607))

(assert (= (and b!412607 res!239741) b!412603))

(assert (= (and b!412603 res!239734) b!412612))

(assert (= (and b!412612 res!239739) b!412602))

(assert (= (and b!412602 res!239731) b!412614))

(assert (= (and b!412614 res!239742) b!412606))

(assert (= (and b!412606 res!239732) b!412605))

(assert (= (and b!412605 res!239740) b!412616))

(assert (= (and b!412616 res!239733) b!412611))

(assert (= (and b!412611 res!239736) b!412609))

(assert (= (and b!412609 res!239737) b!412610))

(assert (= (and b!412613 condMapEmpty!17529) mapIsEmpty!17529))

(assert (= (and b!412613 (not condMapEmpty!17529)) mapNonEmpty!17529))

(get-info :version)

(assert (= (and mapNonEmpty!17529 ((_ is ValueCellFull!4959) mapValue!17529)) b!412608))

(assert (= (and b!412613 ((_ is ValueCellFull!4959) mapDefault!17529)) b!412604))

(assert (= start!39194 b!412613))

(declare-fun m!402339 () Bool)

(assert (=> b!412612 m!402339))

(declare-fun m!402341 () Bool)

(assert (=> mapNonEmpty!17529 m!402341))

(declare-fun m!402343 () Bool)

(assert (=> b!412610 m!402343))

(declare-fun m!402345 () Bool)

(assert (=> b!412610 m!402345))

(declare-fun m!402347 () Bool)

(assert (=> b!412610 m!402347))

(declare-fun m!402349 () Bool)

(assert (=> start!39194 m!402349))

(declare-fun m!402351 () Bool)

(assert (=> start!39194 m!402351))

(declare-fun m!402353 () Bool)

(assert (=> b!412611 m!402353))

(declare-fun m!402355 () Bool)

(assert (=> b!412603 m!402355))

(declare-fun m!402357 () Bool)

(assert (=> b!412615 m!402357))

(declare-fun m!402359 () Bool)

(assert (=> b!412606 m!402359))

(declare-fun m!402361 () Bool)

(assert (=> b!412605 m!402361))

(declare-fun m!402363 () Bool)

(assert (=> b!412614 m!402363))

(declare-fun m!402365 () Bool)

(assert (=> b!412616 m!402365))

(declare-fun m!402367 () Bool)

(assert (=> b!412616 m!402367))

(check-sat (not b!412616) (not b!412611) (not b!412610) (not b!412614) b_and!16857 (not start!39194) (not b!412603) (not b!412615) (not mapNonEmpty!17529) (not b!412612) (not b_next!9453) tp_is_empty!10605 (not b!412605))
(check-sat b_and!16857 (not b_next!9453))
