; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!708 () Bool)

(assert start!708)

(declare-fun b_free!141 () Bool)

(declare-fun b_next!141 () Bool)

(assert (=> start!708 (= b_free!141 (not b_next!141))))

(declare-fun tp!646 () Bool)

(declare-fun b_and!283 () Bool)

(assert (=> start!708 (= tp!646 b_and!283)))

(declare-fun b!4784 () Bool)

(declare-fun e!2552 () Bool)

(declare-fun tp_is_empty!219 () Bool)

(assert (=> b!4784 (= e!2552 tp_is_empty!219)))

(declare-fun b!4785 () Bool)

(declare-fun res!5891 () Bool)

(declare-fun e!2554 () Bool)

(assert (=> b!4785 (=> (not res!5891) (not e!2554))))

(declare-datatypes ((array!371 0))(
  ( (array!372 (arr!176 (Array (_ BitVec 32) (_ BitVec 64))) (size!238 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!371)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!371 (_ BitVec 32)) Bool)

(assert (=> b!4785 (= res!5891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapIsEmpty!293 () Bool)

(declare-fun mapRes!293 () Bool)

(assert (=> mapIsEmpty!293 mapRes!293))

(declare-fun res!5892 () Bool)

(assert (=> start!708 (=> (not res!5892) (not e!2554))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!708 (= res!5892 (validMask!0 mask!2250))))

(assert (=> start!708 e!2554))

(assert (=> start!708 tp!646))

(assert (=> start!708 true))

(declare-datatypes ((V!469 0))(
  ( (V!470 (val!115 Int)) )
))
(declare-datatypes ((ValueCell!93 0))(
  ( (ValueCellFull!93 (v!1204 V!469)) (EmptyCell!93) )
))
(declare-datatypes ((array!373 0))(
  ( (array!374 (arr!177 (Array (_ BitVec 32) ValueCell!93)) (size!239 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!373)

(declare-fun e!2550 () Bool)

(declare-fun array_inv!123 (array!373) Bool)

(assert (=> start!708 (and (array_inv!123 _values!1492) e!2550)))

(assert (=> start!708 tp_is_empty!219))

(declare-fun array_inv!124 (array!371) Bool)

(assert (=> start!708 (array_inv!124 _keys!1806)))

(declare-fun mapNonEmpty!293 () Bool)

(declare-fun tp!647 () Bool)

(declare-fun e!2551 () Bool)

(assert (=> mapNonEmpty!293 (= mapRes!293 (and tp!647 e!2551))))

(declare-fun mapValue!293 () ValueCell!93)

(declare-fun mapRest!293 () (Array (_ BitVec 32) ValueCell!93))

(declare-fun mapKey!293 () (_ BitVec 32))

(assert (=> mapNonEmpty!293 (= (arr!177 _values!1492) (store mapRest!293 mapKey!293 mapValue!293))))

(declare-fun b!4786 () Bool)

(assert (=> b!4786 (= e!2551 tp_is_empty!219)))

(declare-fun b!4787 () Bool)

(declare-fun res!5895 () Bool)

(assert (=> b!4787 (=> (not res!5895) (not e!2554))))

(declare-datatypes ((List!113 0))(
  ( (Nil!110) (Cons!109 (h!675 (_ BitVec 64)) (t!2244 List!113)) )
))
(declare-fun arrayNoDuplicates!0 (array!371 (_ BitVec 32) List!113) Bool)

(assert (=> b!4787 (= res!5895 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!110))))

(declare-fun b!4788 () Bool)

(declare-fun res!5896 () Bool)

(assert (=> b!4788 (=> (not res!5896) (not e!2554))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!469)

(declare-fun minValue!1434 () V!469)

(declare-datatypes ((tuple2!106 0))(
  ( (tuple2!107 (_1!53 (_ BitVec 64)) (_2!53 V!469)) )
))
(declare-datatypes ((List!114 0))(
  ( (Nil!111) (Cons!110 (h!676 tuple2!106) (t!2245 List!114)) )
))
(declare-datatypes ((ListLongMap!111 0))(
  ( (ListLongMap!112 (toList!71 List!114)) )
))
(declare-fun contains!43 (ListLongMap!111 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!30 (array!371 array!373 (_ BitVec 32) (_ BitVec 32) V!469 V!469 (_ BitVec 32) Int) ListLongMap!111)

(assert (=> b!4788 (= res!5896 (contains!43 (getCurrentListMap!30 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!4789 () Bool)

(declare-fun e!2555 () Bool)

(assert (=> b!4789 (= e!2555 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4790 () Bool)

(declare-fun res!5893 () Bool)

(assert (=> b!4790 (=> (not res!5893) (not e!2554))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!4790 (= res!5893 (validKeyInArray!0 k0!1278))))

(declare-fun b!4791 () Bool)

(assert (=> b!4791 (= e!2550 (and e!2552 mapRes!293))))

(declare-fun condMapEmpty!293 () Bool)

(declare-fun mapDefault!293 () ValueCell!93)

(assert (=> b!4791 (= condMapEmpty!293 (= (arr!177 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!93)) mapDefault!293)))))

(declare-fun b!4792 () Bool)

(declare-fun arrayContainsKey!0 (array!371 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4792 (= e!2555 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!4793 () Bool)

(assert (=> b!4793 (= e!2554 (not true))))

(assert (=> b!4793 e!2555))

(declare-fun c!284 () Bool)

(assert (=> b!4793 (= c!284 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!45 0))(
  ( (Unit!46) )
))
(declare-fun lt!792 () Unit!45)

(declare-fun lemmaKeyInListMapIsInArray!10 (array!371 array!373 (_ BitVec 32) (_ BitVec 32) V!469 V!469 (_ BitVec 64) Int) Unit!45)

(assert (=> b!4793 (= lt!792 (lemmaKeyInListMapIsInArray!10 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!4794 () Bool)

(declare-fun res!5894 () Bool)

(assert (=> b!4794 (=> (not res!5894) (not e!2554))))

(assert (=> b!4794 (= res!5894 (and (= (size!239 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!238 _keys!1806) (size!239 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(assert (= (and start!708 res!5892) b!4794))

(assert (= (and b!4794 res!5894) b!4785))

(assert (= (and b!4785 res!5891) b!4787))

(assert (= (and b!4787 res!5895) b!4788))

(assert (= (and b!4788 res!5896) b!4790))

(assert (= (and b!4790 res!5893) b!4793))

(assert (= (and b!4793 c!284) b!4792))

(assert (= (and b!4793 (not c!284)) b!4789))

(assert (= (and b!4791 condMapEmpty!293) mapIsEmpty!293))

(assert (= (and b!4791 (not condMapEmpty!293)) mapNonEmpty!293))

(get-info :version)

(assert (= (and mapNonEmpty!293 ((_ is ValueCellFull!93) mapValue!293)) b!4786))

(assert (= (and b!4791 ((_ is ValueCellFull!93) mapDefault!293)) b!4784))

(assert (= start!708 b!4791))

(declare-fun m!2595 () Bool)

(assert (=> b!4788 m!2595))

(assert (=> b!4788 m!2595))

(declare-fun m!2597 () Bool)

(assert (=> b!4788 m!2597))

(declare-fun m!2599 () Bool)

(assert (=> mapNonEmpty!293 m!2599))

(declare-fun m!2601 () Bool)

(assert (=> b!4792 m!2601))

(declare-fun m!2603 () Bool)

(assert (=> b!4787 m!2603))

(declare-fun m!2605 () Bool)

(assert (=> b!4793 m!2605))

(declare-fun m!2607 () Bool)

(assert (=> b!4790 m!2607))

(declare-fun m!2609 () Bool)

(assert (=> start!708 m!2609))

(declare-fun m!2611 () Bool)

(assert (=> start!708 m!2611))

(declare-fun m!2613 () Bool)

(assert (=> start!708 m!2613))

(declare-fun m!2615 () Bool)

(assert (=> b!4785 m!2615))

(check-sat (not b!4790) (not start!708) b_and!283 (not b!4785) (not b!4788) (not b!4792) (not b!4787) (not b!4793) (not mapNonEmpty!293) tp_is_empty!219 (not b_next!141))
(check-sat b_and!283 (not b_next!141))
