; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38372 () Bool)

(assert start!38372)

(declare-fun b!395544 () Bool)

(declare-fun e!239448 () Bool)

(declare-fun e!239449 () Bool)

(declare-fun mapRes!16359 () Bool)

(assert (=> b!395544 (= e!239448 (and e!239449 mapRes!16359))))

(declare-fun condMapEmpty!16359 () Bool)

(declare-datatypes ((V!14213 0))(
  ( (V!14214 (val!4960 Int)) )
))
(declare-datatypes ((ValueCell!4572 0))(
  ( (ValueCellFull!4572 (v!7202 V!14213)) (EmptyCell!4572) )
))
(declare-datatypes ((array!23547 0))(
  ( (array!23548 (arr!11223 (Array (_ BitVec 32) ValueCell!4572)) (size!11575 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23547)

(declare-fun mapDefault!16359 () ValueCell!4572)

(assert (=> b!395544 (= condMapEmpty!16359 (= (arr!11223 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4572)) mapDefault!16359)))))

(declare-fun res!226876 () Bool)

(declare-fun e!239446 () Bool)

(assert (=> start!38372 (=> (not res!226876) (not e!239446))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23549 0))(
  ( (array!23550 (arr!11224 (Array (_ BitVec 32) (_ BitVec 64))) (size!11576 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23549)

(assert (=> start!38372 (= res!226876 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11576 _keys!709))))))

(assert (=> start!38372 e!239446))

(assert (=> start!38372 true))

(declare-fun array_inv!8220 (array!23547) Bool)

(assert (=> start!38372 (and (array_inv!8220 _values!549) e!239448)))

(declare-fun array_inv!8221 (array!23549) Bool)

(assert (=> start!38372 (array_inv!8221 _keys!709)))

(declare-fun b!395545 () Bool)

(declare-fun res!226873 () Bool)

(assert (=> b!395545 (=> (not res!226873) (not e!239446))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!395545 (= res!226873 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11576 _keys!709))))))

(declare-fun b!395546 () Bool)

(declare-fun res!226875 () Bool)

(assert (=> b!395546 (=> (not res!226875) (not e!239446))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23549 (_ BitVec 32)) Bool)

(assert (=> b!395546 (= res!226875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!395547 () Bool)

(declare-fun res!226878 () Bool)

(assert (=> b!395547 (=> (not res!226878) (not e!239446))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23549 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!395547 (= res!226878 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16359 () Bool)

(assert (=> mapIsEmpty!16359 mapRes!16359))

(declare-fun b!395548 () Bool)

(declare-fun e!239447 () Bool)

(declare-fun tp_is_empty!9831 () Bool)

(assert (=> b!395548 (= e!239447 tp_is_empty!9831)))

(declare-fun b!395549 () Bool)

(assert (=> b!395549 (= e!239446 (bvsgt #b00000000000000000000000000000000 (size!11576 _keys!709)))))

(declare-fun b!395550 () Bool)

(assert (=> b!395550 (= e!239449 tp_is_empty!9831)))

(declare-fun b!395551 () Bool)

(declare-fun res!226874 () Bool)

(assert (=> b!395551 (=> (not res!226874) (not e!239446))))

(assert (=> b!395551 (= res!226874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!23550 (store (arr!11224 _keys!709) i!563 k0!794) (size!11576 _keys!709)) mask!1025))))

(declare-fun b!395552 () Bool)

(declare-fun res!226872 () Bool)

(assert (=> b!395552 (=> (not res!226872) (not e!239446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395552 (= res!226872 (validMask!0 mask!1025))))

(declare-fun b!395553 () Bool)

(declare-fun res!226877 () Bool)

(assert (=> b!395553 (=> (not res!226877) (not e!239446))))

(declare-datatypes ((List!6481 0))(
  ( (Nil!6478) (Cons!6477 (h!7333 (_ BitVec 64)) (t!11663 List!6481)) )
))
(declare-fun arrayNoDuplicates!0 (array!23549 (_ BitVec 32) List!6481) Bool)

(assert (=> b!395553 (= res!226877 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6478))))

(declare-fun b!395554 () Bool)

(declare-fun res!226870 () Bool)

(assert (=> b!395554 (=> (not res!226870) (not e!239446))))

(assert (=> b!395554 (= res!226870 (or (= (select (arr!11224 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11224 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16359 () Bool)

(declare-fun tp!32154 () Bool)

(assert (=> mapNonEmpty!16359 (= mapRes!16359 (and tp!32154 e!239447))))

(declare-fun mapValue!16359 () ValueCell!4572)

(declare-fun mapRest!16359 () (Array (_ BitVec 32) ValueCell!4572))

(declare-fun mapKey!16359 () (_ BitVec 32))

(assert (=> mapNonEmpty!16359 (= (arr!11223 _values!549) (store mapRest!16359 mapKey!16359 mapValue!16359))))

(declare-fun b!395555 () Bool)

(declare-fun res!226879 () Bool)

(assert (=> b!395555 (=> (not res!226879) (not e!239446))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!395555 (= res!226879 (and (= (size!11575 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11576 _keys!709) (size!11575 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!395556 () Bool)

(declare-fun res!226871 () Bool)

(assert (=> b!395556 (=> (not res!226871) (not e!239446))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!395556 (= res!226871 (validKeyInArray!0 k0!794))))

(assert (= (and start!38372 res!226876) b!395552))

(assert (= (and b!395552 res!226872) b!395555))

(assert (= (and b!395555 res!226879) b!395546))

(assert (= (and b!395546 res!226875) b!395553))

(assert (= (and b!395553 res!226877) b!395545))

(assert (= (and b!395545 res!226873) b!395556))

(assert (= (and b!395556 res!226871) b!395554))

(assert (= (and b!395554 res!226870) b!395547))

(assert (= (and b!395547 res!226878) b!395551))

(assert (= (and b!395551 res!226874) b!395549))

(assert (= (and b!395544 condMapEmpty!16359) mapIsEmpty!16359))

(assert (= (and b!395544 (not condMapEmpty!16359)) mapNonEmpty!16359))

(get-info :version)

(assert (= (and mapNonEmpty!16359 ((_ is ValueCellFull!4572) mapValue!16359)) b!395548))

(assert (= (and b!395544 ((_ is ValueCellFull!4572) mapDefault!16359)) b!395550))

(assert (= start!38372 b!395544))

(declare-fun m!391489 () Bool)

(assert (=> b!395547 m!391489))

(declare-fun m!391491 () Bool)

(assert (=> mapNonEmpty!16359 m!391491))

(declare-fun m!391493 () Bool)

(assert (=> b!395553 m!391493))

(declare-fun m!391495 () Bool)

(assert (=> b!395556 m!391495))

(declare-fun m!391497 () Bool)

(assert (=> start!38372 m!391497))

(declare-fun m!391499 () Bool)

(assert (=> start!38372 m!391499))

(declare-fun m!391501 () Bool)

(assert (=> b!395551 m!391501))

(declare-fun m!391503 () Bool)

(assert (=> b!395551 m!391503))

(declare-fun m!391505 () Bool)

(assert (=> b!395552 m!391505))

(declare-fun m!391507 () Bool)

(assert (=> b!395554 m!391507))

(declare-fun m!391509 () Bool)

(assert (=> b!395546 m!391509))

(check-sat (not b!395553) (not b!395546) (not b!395547) (not mapNonEmpty!16359) (not b!395551) (not b!395556) tp_is_empty!9831 (not b!395552) (not start!38372))
(check-sat)
