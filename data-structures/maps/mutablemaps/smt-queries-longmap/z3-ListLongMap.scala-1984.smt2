; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34798 () Bool)

(assert start!34798)

(declare-fun b_free!7575 () Bool)

(declare-fun b_next!7575 () Bool)

(assert (=> start!34798 (= b_free!7575 (not b_next!7575))))

(declare-fun tp!26291 () Bool)

(declare-fun b_and!14815 () Bool)

(assert (=> start!34798 (= tp!26291 b_and!14815)))

(declare-fun b!347844 () Bool)

(declare-fun res!192686 () Bool)

(declare-fun e!213153 () Bool)

(assert (=> b!347844 (=> (not res!192686) (not e!213153))))

(declare-datatypes ((array!18609 0))(
  ( (array!18610 (arr!8811 (Array (_ BitVec 32) (_ BitVec 64))) (size!9163 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18609)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18609 (_ BitVec 32)) Bool)

(assert (=> b!347844 (= res!192686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!347845 () Bool)

(declare-fun e!213155 () Bool)

(declare-fun tp_is_empty!7527 () Bool)

(assert (=> b!347845 (= e!213155 tp_is_empty!7527)))

(declare-fun b!347846 () Bool)

(declare-fun res!192691 () Bool)

(assert (=> b!347846 (=> (not res!192691) (not e!213153))))

(declare-datatypes ((List!5141 0))(
  ( (Nil!5138) (Cons!5137 (h!5993 (_ BitVec 64)) (t!10279 List!5141)) )
))
(declare-fun arrayNoDuplicates!0 (array!18609 (_ BitVec 32) List!5141) Bool)

(assert (=> b!347846 (= res!192691 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5138))))

(declare-fun b!347847 () Bool)

(declare-fun res!192689 () Bool)

(assert (=> b!347847 (=> (not res!192689) (not e!213153))))

(declare-datatypes ((V!11013 0))(
  ( (V!11014 (val!3808 Int)) )
))
(declare-datatypes ((ValueCell!3420 0))(
  ( (ValueCellFull!3420 (v!5987 V!11013)) (EmptyCell!3420) )
))
(declare-datatypes ((array!18611 0))(
  ( (array!18612 (arr!8812 (Array (_ BitVec 32) ValueCell!3420)) (size!9164 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18611)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!347847 (= res!192689 (and (= (size!9164 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9163 _keys!1895) (size!9164 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!347848 () Bool)

(declare-fun res!192685 () Bool)

(declare-fun e!213154 () Bool)

(assert (=> b!347848 (=> (not res!192685) (not e!213154))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3397 0))(
  ( (MissingZero!3397 (index!15767 (_ BitVec 32))) (Found!3397 (index!15768 (_ BitVec 32))) (Intermediate!3397 (undefined!4209 Bool) (index!15769 (_ BitVec 32)) (x!34656 (_ BitVec 32))) (Undefined!3397) (MissingVacant!3397 (index!15770 (_ BitVec 32))) )
))
(declare-fun lt!163759 () SeekEntryResult!3397)

(declare-fun arrayContainsKey!0 (array!18609 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347848 (= res!192685 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15768 lt!163759)))))

(declare-fun b!347849 () Bool)

(declare-fun e!213152 () Bool)

(assert (=> b!347849 (= e!213153 e!213152)))

(declare-fun res!192687 () Bool)

(assert (=> b!347849 (=> (not res!192687) (not e!213152))))

(declare-datatypes ((tuple2!5498 0))(
  ( (tuple2!5499 (_1!2759 (_ BitVec 64)) (_2!2759 V!11013)) )
))
(declare-datatypes ((List!5142 0))(
  ( (Nil!5139) (Cons!5138 (h!5994 tuple2!5498) (t!10280 List!5142)) )
))
(declare-datatypes ((ListLongMap!4425 0))(
  ( (ListLongMap!4426 (toList!2228 List!5142)) )
))
(declare-fun lt!163760 () ListLongMap!4425)

(declare-fun contains!2289 (ListLongMap!4425 (_ BitVec 64)) Bool)

(assert (=> b!347849 (= res!192687 (not (contains!2289 lt!163760 k0!1348)))))

(declare-fun zeroValue!1467 () V!11013)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11013)

(declare-fun getCurrentListMap!1745 (array!18609 array!18611 (_ BitVec 32) (_ BitVec 32) V!11013 V!11013 (_ BitVec 32) Int) ListLongMap!4425)

(assert (=> b!347849 (= lt!163760 (getCurrentListMap!1745 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!347850 () Bool)

(assert (=> b!347850 (= e!213154 (not true))))

(assert (=> b!347850 (contains!2289 lt!163760 (select (arr!8811 _keys!1895) (index!15768 lt!163759)))))

(declare-datatypes ((Unit!10804 0))(
  ( (Unit!10805) )
))
(declare-fun lt!163761 () Unit!10804)

(declare-fun lemmaValidKeyInArrayIsInListMap!174 (array!18609 array!18611 (_ BitVec 32) (_ BitVec 32) V!11013 V!11013 (_ BitVec 32) Int) Unit!10804)

(assert (=> b!347850 (= lt!163761 (lemmaValidKeyInArrayIsInListMap!174 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!15768 lt!163759) defaultEntry!1528))))

(assert (=> b!347850 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-fun lt!163758 () Unit!10804)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18609 (_ BitVec 64) (_ BitVec 32)) Unit!10804)

(assert (=> b!347850 (= lt!163758 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!15768 lt!163759)))))

(declare-fun res!192684 () Bool)

(assert (=> start!34798 (=> (not res!192684) (not e!213153))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34798 (= res!192684 (validMask!0 mask!2385))))

(assert (=> start!34798 e!213153))

(assert (=> start!34798 true))

(assert (=> start!34798 tp_is_empty!7527))

(assert (=> start!34798 tp!26291))

(declare-fun e!213157 () Bool)

(declare-fun array_inv!6506 (array!18611) Bool)

(assert (=> start!34798 (and (array_inv!6506 _values!1525) e!213157)))

(declare-fun array_inv!6507 (array!18609) Bool)

(assert (=> start!34798 (array_inv!6507 _keys!1895)))

(declare-fun b!347851 () Bool)

(assert (=> b!347851 (= e!213152 e!213154)))

(declare-fun res!192690 () Bool)

(assert (=> b!347851 (=> (not res!192690) (not e!213154))))

(get-info :version)

(assert (=> b!347851 (= res!192690 (and ((_ is Found!3397) lt!163759) (= (select (arr!8811 _keys!1895) (index!15768 lt!163759)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18609 (_ BitVec 32)) SeekEntryResult!3397)

(assert (=> b!347851 (= lt!163759 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!347852 () Bool)

(declare-fun e!213158 () Bool)

(assert (=> b!347852 (= e!213158 tp_is_empty!7527)))

(declare-fun b!347853 () Bool)

(declare-fun res!192688 () Bool)

(assert (=> b!347853 (=> (not res!192688) (not e!213153))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347853 (= res!192688 (validKeyInArray!0 k0!1348))))

(declare-fun b!347854 () Bool)

(declare-fun mapRes!12750 () Bool)

(assert (=> b!347854 (= e!213157 (and e!213158 mapRes!12750))))

(declare-fun condMapEmpty!12750 () Bool)

(declare-fun mapDefault!12750 () ValueCell!3420)

(assert (=> b!347854 (= condMapEmpty!12750 (= (arr!8812 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3420)) mapDefault!12750)))))

(declare-fun mapIsEmpty!12750 () Bool)

(assert (=> mapIsEmpty!12750 mapRes!12750))

(declare-fun mapNonEmpty!12750 () Bool)

(declare-fun tp!26292 () Bool)

(assert (=> mapNonEmpty!12750 (= mapRes!12750 (and tp!26292 e!213155))))

(declare-fun mapValue!12750 () ValueCell!3420)

(declare-fun mapRest!12750 () (Array (_ BitVec 32) ValueCell!3420))

(declare-fun mapKey!12750 () (_ BitVec 32))

(assert (=> mapNonEmpty!12750 (= (arr!8812 _values!1525) (store mapRest!12750 mapKey!12750 mapValue!12750))))

(assert (= (and start!34798 res!192684) b!347847))

(assert (= (and b!347847 res!192689) b!347844))

(assert (= (and b!347844 res!192686) b!347846))

(assert (= (and b!347846 res!192691) b!347853))

(assert (= (and b!347853 res!192688) b!347849))

(assert (= (and b!347849 res!192687) b!347851))

(assert (= (and b!347851 res!192690) b!347848))

(assert (= (and b!347848 res!192685) b!347850))

(assert (= (and b!347854 condMapEmpty!12750) mapIsEmpty!12750))

(assert (= (and b!347854 (not condMapEmpty!12750)) mapNonEmpty!12750))

(assert (= (and mapNonEmpty!12750 ((_ is ValueCellFull!3420) mapValue!12750)) b!347845))

(assert (= (and b!347854 ((_ is ValueCellFull!3420) mapDefault!12750)) b!347852))

(assert (= start!34798 b!347854))

(declare-fun m!348749 () Bool)

(assert (=> b!347853 m!348749))

(declare-fun m!348751 () Bool)

(assert (=> b!347850 m!348751))

(declare-fun m!348753 () Bool)

(assert (=> b!347850 m!348753))

(assert (=> b!347850 m!348753))

(declare-fun m!348755 () Bool)

(assert (=> b!347850 m!348755))

(declare-fun m!348757 () Bool)

(assert (=> b!347850 m!348757))

(declare-fun m!348759 () Bool)

(assert (=> b!347850 m!348759))

(declare-fun m!348761 () Bool)

(assert (=> mapNonEmpty!12750 m!348761))

(declare-fun m!348763 () Bool)

(assert (=> b!347848 m!348763))

(assert (=> b!347851 m!348753))

(declare-fun m!348765 () Bool)

(assert (=> b!347851 m!348765))

(declare-fun m!348767 () Bool)

(assert (=> start!34798 m!348767))

(declare-fun m!348769 () Bool)

(assert (=> start!34798 m!348769))

(declare-fun m!348771 () Bool)

(assert (=> start!34798 m!348771))

(declare-fun m!348773 () Bool)

(assert (=> b!347844 m!348773))

(declare-fun m!348775 () Bool)

(assert (=> b!347849 m!348775))

(declare-fun m!348777 () Bool)

(assert (=> b!347849 m!348777))

(declare-fun m!348779 () Bool)

(assert (=> b!347846 m!348779))

(check-sat (not b!347851) (not b!347848) (not mapNonEmpty!12750) (not b!347853) tp_is_empty!7527 (not b_next!7575) (not b!347850) (not b!347849) (not start!34798) (not b!347846) b_and!14815 (not b!347844))
(check-sat b_and!14815 (not b_next!7575))
