; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!832 () Bool)

(assert start!832)

(declare-fun b_free!225 () Bool)

(declare-fun b_next!225 () Bool)

(assert (=> start!832 (= b_free!225 (not b_next!225))))

(declare-fun tp!905 () Bool)

(declare-fun b_and!371 () Bool)

(assert (=> start!832 (= tp!905 b_and!371)))

(declare-fun b!6548 () Bool)

(declare-fun e!3607 () Bool)

(assert (=> b!6548 (= e!3607 true)))

(declare-datatypes ((SeekEntryResult!21 0))(
  ( (MissingZero!21 (index!2203 (_ BitVec 32))) (Found!21 (index!2204 (_ BitVec 32))) (Intermediate!21 (undefined!833 Bool) (index!2205 (_ BitVec 32)) (x!2535 (_ BitVec 32))) (Undefined!21) (MissingVacant!21 (index!2206 (_ BitVec 32))) )
))
(declare-fun lt!1239 () SeekEntryResult!21)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((array!539 0))(
  ( (array!540 (arr!258 (Array (_ BitVec 32) (_ BitVec 64))) (size!320 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!539)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!539 (_ BitVec 32)) SeekEntryResult!21)

(assert (=> b!6548 (= lt!1239 (seekEntryOrOpen!0 k0!1278 _keys!1806 mask!2250))))

(declare-fun b!6549 () Bool)

(declare-fun e!3609 () Bool)

(declare-fun tp_is_empty!303 () Bool)

(assert (=> b!6549 (= e!3609 tp_is_empty!303)))

(declare-fun res!6887 () Bool)

(declare-fun e!3610 () Bool)

(assert (=> start!832 (=> (not res!6887) (not e!3610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!832 (= res!6887 (validMask!0 mask!2250))))

(assert (=> start!832 e!3610))

(assert (=> start!832 tp!905))

(assert (=> start!832 true))

(declare-datatypes ((V!581 0))(
  ( (V!582 (val!157 Int)) )
))
(declare-datatypes ((ValueCell!135 0))(
  ( (ValueCellFull!135 (v!1248 V!581)) (EmptyCell!135) )
))
(declare-datatypes ((array!541 0))(
  ( (array!542 (arr!259 (Array (_ BitVec 32) ValueCell!135)) (size!321 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!541)

(declare-fun e!3605 () Bool)

(declare-fun array_inv!183 (array!541) Bool)

(assert (=> start!832 (and (array_inv!183 _values!1492) e!3605)))

(assert (=> start!832 tp_is_empty!303))

(declare-fun array_inv!184 (array!539) Bool)

(assert (=> start!832 (array_inv!184 _keys!1806)))

(declare-fun b!6550 () Bool)

(declare-fun res!6892 () Bool)

(assert (=> b!6550 (=> (not res!6892) (not e!3610))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!6550 (= res!6892 (and (= (size!321 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!320 _keys!1806) (size!321 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!6551 () Bool)

(declare-fun res!6890 () Bool)

(assert (=> b!6551 (=> (not res!6890) (not e!3610))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!6551 (= res!6890 (validKeyInArray!0 k0!1278))))

(declare-fun b!6552 () Bool)

(declare-fun res!6891 () Bool)

(assert (=> b!6552 (=> (not res!6891) (not e!3610))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!539 (_ BitVec 32)) Bool)

(assert (=> b!6552 (= res!6891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!6553 () Bool)

(declare-fun res!6885 () Bool)

(assert (=> b!6553 (=> (not res!6885) (not e!3610))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!581)

(declare-fun zeroValue!1434 () V!581)

(declare-datatypes ((tuple2!154 0))(
  ( (tuple2!155 (_1!77 (_ BitVec 64)) (_2!77 V!581)) )
))
(declare-datatypes ((List!169 0))(
  ( (Nil!166) (Cons!165 (h!731 tuple2!154) (t!2304 List!169)) )
))
(declare-datatypes ((ListLongMap!159 0))(
  ( (ListLongMap!160 (toList!95 List!169)) )
))
(declare-fun contains!69 (ListLongMap!159 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!54 (array!539 array!541 (_ BitVec 32) (_ BitVec 32) V!581 V!581 (_ BitVec 32) Int) ListLongMap!159)

(assert (=> b!6553 (= res!6885 (contains!69 (getCurrentListMap!54 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun mapNonEmpty!425 () Bool)

(declare-fun mapRes!425 () Bool)

(declare-fun tp!904 () Bool)

(declare-fun e!3608 () Bool)

(assert (=> mapNonEmpty!425 (= mapRes!425 (and tp!904 e!3608))))

(declare-fun mapValue!425 () ValueCell!135)

(declare-fun mapKey!425 () (_ BitVec 32))

(declare-fun mapRest!425 () (Array (_ BitVec 32) ValueCell!135))

(assert (=> mapNonEmpty!425 (= (arr!259 _values!1492) (store mapRest!425 mapKey!425 mapValue!425))))

(declare-fun b!6554 () Bool)

(assert (=> b!6554 (= e!3605 (and e!3609 mapRes!425))))

(declare-fun condMapEmpty!425 () Bool)

(declare-fun mapDefault!425 () ValueCell!135)

(assert (=> b!6554 (= condMapEmpty!425 (= (arr!259 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!135)) mapDefault!425)))))

(declare-fun b!6555 () Bool)

(declare-fun e!3606 () Bool)

(assert (=> b!6555 (= e!3610 (not e!3606))))

(declare-fun res!6886 () Bool)

(assert (=> b!6555 (=> res!6886 e!3606)))

(declare-fun arrayContainsKey!0 (array!539 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!6555 (= res!6886 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(declare-fun e!3611 () Bool)

(assert (=> b!6555 e!3611))

(declare-fun c!470 () Bool)

(assert (=> b!6555 (= c!470 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!107 0))(
  ( (Unit!108) )
))
(declare-fun lt!1242 () Unit!107)

(declare-fun lemmaKeyInListMapIsInArray!38 (array!539 array!541 (_ BitVec 32) (_ BitVec 32) V!581 V!581 (_ BitVec 64) Int) Unit!107)

(assert (=> b!6555 (= lt!1242 (lemmaKeyInListMapIsInArray!38 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!6556 () Bool)

(declare-fun res!6889 () Bool)

(assert (=> b!6556 (=> (not res!6889) (not e!3610))))

(declare-datatypes ((List!170 0))(
  ( (Nil!167) (Cons!166 (h!732 (_ BitVec 64)) (t!2305 List!170)) )
))
(declare-fun arrayNoDuplicates!0 (array!539 (_ BitVec 32) List!170) Bool)

(assert (=> b!6556 (= res!6889 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!167))))

(declare-fun b!6557 () Bool)

(assert (=> b!6557 (= e!3608 tp_is_empty!303)))

(declare-fun b!6558 () Bool)

(assert (=> b!6558 (= e!3611 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!6559 () Bool)

(assert (=> b!6559 (= e!3611 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!425 () Bool)

(assert (=> mapIsEmpty!425 mapRes!425))

(declare-fun b!6560 () Bool)

(assert (=> b!6560 (= e!3606 e!3607)))

(declare-fun res!6888 () Bool)

(assert (=> b!6560 (=> res!6888 e!3607)))

(assert (=> b!6560 (= res!6888 (not (= (size!320 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(declare-fun lt!1241 () (_ BitVec 32))

(assert (=> b!6560 (arrayForallSeekEntryOrOpenFound!0 lt!1241 _keys!1806 mask!2250)))

(declare-fun lt!1240 () Unit!107)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!539 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!107)

(assert (=> b!6560 (= lt!1240 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1241))))

(declare-fun arrayScanForKey!0 (array!539 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!6560 (= lt!1241 (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(assert (= (and start!832 res!6887) b!6550))

(assert (= (and b!6550 res!6892) b!6552))

(assert (= (and b!6552 res!6891) b!6556))

(assert (= (and b!6556 res!6889) b!6553))

(assert (= (and b!6553 res!6885) b!6551))

(assert (= (and b!6551 res!6890) b!6555))

(assert (= (and b!6555 c!470) b!6559))

(assert (= (and b!6555 (not c!470)) b!6558))

(assert (= (and b!6555 (not res!6886)) b!6560))

(assert (= (and b!6560 (not res!6888)) b!6548))

(assert (= (and b!6554 condMapEmpty!425) mapIsEmpty!425))

(assert (= (and b!6554 (not condMapEmpty!425)) mapNonEmpty!425))

(get-info :version)

(assert (= (and mapNonEmpty!425 ((_ is ValueCellFull!135) mapValue!425)) b!6557))

(assert (= (and b!6554 ((_ is ValueCellFull!135) mapDefault!425)) b!6549))

(assert (= start!832 b!6554))

(declare-fun m!3797 () Bool)

(assert (=> b!6559 m!3797))

(declare-fun m!3799 () Bool)

(assert (=> b!6556 m!3799))

(declare-fun m!3801 () Bool)

(assert (=> b!6551 m!3801))

(declare-fun m!3803 () Bool)

(assert (=> b!6560 m!3803))

(declare-fun m!3805 () Bool)

(assert (=> b!6560 m!3805))

(declare-fun m!3807 () Bool)

(assert (=> b!6560 m!3807))

(declare-fun m!3809 () Bool)

(assert (=> start!832 m!3809))

(declare-fun m!3811 () Bool)

(assert (=> start!832 m!3811))

(declare-fun m!3813 () Bool)

(assert (=> start!832 m!3813))

(declare-fun m!3815 () Bool)

(assert (=> b!6552 m!3815))

(declare-fun m!3817 () Bool)

(assert (=> b!6553 m!3817))

(assert (=> b!6553 m!3817))

(declare-fun m!3819 () Bool)

(assert (=> b!6553 m!3819))

(declare-fun m!3821 () Bool)

(assert (=> b!6548 m!3821))

(assert (=> b!6555 m!3797))

(declare-fun m!3823 () Bool)

(assert (=> b!6555 m!3823))

(declare-fun m!3825 () Bool)

(assert (=> mapNonEmpty!425 m!3825))

(check-sat (not b!6552) (not b!6559) (not b!6551) (not b!6556) tp_is_empty!303 (not b!6548) (not b!6553) b_and!371 (not start!832) (not mapNonEmpty!425) (not b!6555) (not b!6560) (not b_next!225))
(check-sat b_and!371 (not b_next!225))
