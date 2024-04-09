; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34786 () Bool)

(assert start!34786)

(declare-fun b_free!7563 () Bool)

(declare-fun b_next!7563 () Bool)

(assert (=> start!34786 (= b_free!7563 (not b_next!7563))))

(declare-fun tp!26255 () Bool)

(declare-fun b_and!14803 () Bool)

(assert (=> start!34786 (= tp!26255 b_and!14803)))

(declare-fun b!347646 () Bool)

(declare-fun res!192545 () Bool)

(declare-fun e!213028 () Bool)

(assert (=> b!347646 (=> (not res!192545) (not e!213028))))

(declare-datatypes ((SeekEntryResult!3392 0))(
  ( (MissingZero!3392 (index!15747 (_ BitVec 32))) (Found!3392 (index!15748 (_ BitVec 32))) (Intermediate!3392 (undefined!4204 Bool) (index!15749 (_ BitVec 32)) (x!34635 (_ BitVec 32))) (Undefined!3392) (MissingVacant!3392 (index!15750 (_ BitVec 32))) )
))
(declare-fun lt!163689 () SeekEntryResult!3392)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((array!18587 0))(
  ( (array!18588 (arr!8800 (Array (_ BitVec 32) (_ BitVec 64))) (size!9152 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18587)

(declare-fun arrayContainsKey!0 (array!18587 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347646 (= res!192545 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15748 lt!163689)))))

(declare-fun b!347647 () Bool)

(declare-fun e!213029 () Bool)

(assert (=> b!347647 (= e!213029 e!213028)))

(declare-fun res!192547 () Bool)

(assert (=> b!347647 (=> (not res!192547) (not e!213028))))

(get-info :version)

(assert (=> b!347647 (= res!192547 (and ((_ is Found!3392) lt!163689) (= (select (arr!8800 _keys!1895) (index!15748 lt!163689)) k0!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18587 (_ BitVec 32)) SeekEntryResult!3392)

(assert (=> b!347647 (= lt!163689 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!347648 () Bool)

(declare-fun e!213026 () Bool)

(declare-fun tp_is_empty!7515 () Bool)

(assert (=> b!347648 (= e!213026 tp_is_empty!7515)))

(declare-fun mapNonEmpty!12732 () Bool)

(declare-fun mapRes!12732 () Bool)

(declare-fun tp!26256 () Bool)

(declare-fun e!213031 () Bool)

(assert (=> mapNonEmpty!12732 (= mapRes!12732 (and tp!26256 e!213031))))

(declare-datatypes ((V!10997 0))(
  ( (V!10998 (val!3802 Int)) )
))
(declare-datatypes ((ValueCell!3414 0))(
  ( (ValueCellFull!3414 (v!5981 V!10997)) (EmptyCell!3414) )
))
(declare-fun mapRest!12732 () (Array (_ BitVec 32) ValueCell!3414))

(declare-fun mapKey!12732 () (_ BitVec 32))

(declare-fun mapValue!12732 () ValueCell!3414)

(declare-datatypes ((array!18589 0))(
  ( (array!18590 (arr!8801 (Array (_ BitVec 32) ValueCell!3414)) (size!9153 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18589)

(assert (=> mapNonEmpty!12732 (= (arr!8801 _values!1525) (store mapRest!12732 mapKey!12732 mapValue!12732))))

(declare-fun b!347649 () Bool)

(assert (=> b!347649 (= e!213028 (not true))))

(declare-datatypes ((tuple2!5490 0))(
  ( (tuple2!5491 (_1!2755 (_ BitVec 64)) (_2!2755 V!10997)) )
))
(declare-datatypes ((List!5134 0))(
  ( (Nil!5131) (Cons!5130 (h!5986 tuple2!5490) (t!10272 List!5134)) )
))
(declare-datatypes ((ListLongMap!4417 0))(
  ( (ListLongMap!4418 (toList!2224 List!5134)) )
))
(declare-fun lt!163687 () ListLongMap!4417)

(declare-fun contains!2285 (ListLongMap!4417 (_ BitVec 64)) Bool)

(assert (=> b!347649 (contains!2285 lt!163687 (select (arr!8800 _keys!1895) (index!15748 lt!163689)))))

(declare-datatypes ((Unit!10796 0))(
  ( (Unit!10797) )
))
(declare-fun lt!163686 () Unit!10796)

(declare-fun zeroValue!1467 () V!10997)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10997)

(declare-fun lemmaValidKeyInArrayIsInListMap!170 (array!18587 array!18589 (_ BitVec 32) (_ BitVec 32) V!10997 V!10997 (_ BitVec 32) Int) Unit!10796)

(assert (=> b!347649 (= lt!163686 (lemmaValidKeyInArrayIsInListMap!170 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!15748 lt!163689) defaultEntry!1528))))

(assert (=> b!347649 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-fun lt!163688 () Unit!10796)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18587 (_ BitVec 64) (_ BitVec 32)) Unit!10796)

(assert (=> b!347649 (= lt!163688 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!15748 lt!163689)))))

(declare-fun b!347650 () Bool)

(declare-fun res!192543 () Bool)

(declare-fun e!213027 () Bool)

(assert (=> b!347650 (=> (not res!192543) (not e!213027))))

(assert (=> b!347650 (= res!192543 (and (= (size!9153 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9152 _keys!1895) (size!9153 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!347651 () Bool)

(assert (=> b!347651 (= e!213031 tp_is_empty!7515)))

(declare-fun b!347653 () Bool)

(declare-fun res!192540 () Bool)

(assert (=> b!347653 (=> (not res!192540) (not e!213027))))

(declare-datatypes ((List!5135 0))(
  ( (Nil!5132) (Cons!5131 (h!5987 (_ BitVec 64)) (t!10273 List!5135)) )
))
(declare-fun arrayNoDuplicates!0 (array!18587 (_ BitVec 32) List!5135) Bool)

(assert (=> b!347653 (= res!192540 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5132))))

(declare-fun b!347654 () Bool)

(declare-fun e!213030 () Bool)

(assert (=> b!347654 (= e!213030 (and e!213026 mapRes!12732))))

(declare-fun condMapEmpty!12732 () Bool)

(declare-fun mapDefault!12732 () ValueCell!3414)

(assert (=> b!347654 (= condMapEmpty!12732 (= (arr!8801 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3414)) mapDefault!12732)))))

(declare-fun b!347652 () Bool)

(assert (=> b!347652 (= e!213027 e!213029)))

(declare-fun res!192546 () Bool)

(assert (=> b!347652 (=> (not res!192546) (not e!213029))))

(assert (=> b!347652 (= res!192546 (not (contains!2285 lt!163687 k0!1348)))))

(declare-fun getCurrentListMap!1743 (array!18587 array!18589 (_ BitVec 32) (_ BitVec 32) V!10997 V!10997 (_ BitVec 32) Int) ListLongMap!4417)

(assert (=> b!347652 (= lt!163687 (getCurrentListMap!1743 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun res!192541 () Bool)

(assert (=> start!34786 (=> (not res!192541) (not e!213027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34786 (= res!192541 (validMask!0 mask!2385))))

(assert (=> start!34786 e!213027))

(assert (=> start!34786 true))

(assert (=> start!34786 tp_is_empty!7515))

(assert (=> start!34786 tp!26255))

(declare-fun array_inv!6500 (array!18589) Bool)

(assert (=> start!34786 (and (array_inv!6500 _values!1525) e!213030)))

(declare-fun array_inv!6501 (array!18587) Bool)

(assert (=> start!34786 (array_inv!6501 _keys!1895)))

(declare-fun mapIsEmpty!12732 () Bool)

(assert (=> mapIsEmpty!12732 mapRes!12732))

(declare-fun b!347655 () Bool)

(declare-fun res!192544 () Bool)

(assert (=> b!347655 (=> (not res!192544) (not e!213027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347655 (= res!192544 (validKeyInArray!0 k0!1348))))

(declare-fun b!347656 () Bool)

(declare-fun res!192542 () Bool)

(assert (=> b!347656 (=> (not res!192542) (not e!213027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18587 (_ BitVec 32)) Bool)

(assert (=> b!347656 (= res!192542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(assert (= (and start!34786 res!192541) b!347650))

(assert (= (and b!347650 res!192543) b!347656))

(assert (= (and b!347656 res!192542) b!347653))

(assert (= (and b!347653 res!192540) b!347655))

(assert (= (and b!347655 res!192544) b!347652))

(assert (= (and b!347652 res!192546) b!347647))

(assert (= (and b!347647 res!192547) b!347646))

(assert (= (and b!347646 res!192545) b!347649))

(assert (= (and b!347654 condMapEmpty!12732) mapIsEmpty!12732))

(assert (= (and b!347654 (not condMapEmpty!12732)) mapNonEmpty!12732))

(assert (= (and mapNonEmpty!12732 ((_ is ValueCellFull!3414) mapValue!12732)) b!347651))

(assert (= (and b!347654 ((_ is ValueCellFull!3414) mapDefault!12732)) b!347648))

(assert (= start!34786 b!347654))

(declare-fun m!348557 () Bool)

(assert (=> start!34786 m!348557))

(declare-fun m!348559 () Bool)

(assert (=> start!34786 m!348559))

(declare-fun m!348561 () Bool)

(assert (=> start!34786 m!348561))

(declare-fun m!348563 () Bool)

(assert (=> b!347647 m!348563))

(declare-fun m!348565 () Bool)

(assert (=> b!347647 m!348565))

(assert (=> b!347649 m!348563))

(declare-fun m!348567 () Bool)

(assert (=> b!347649 m!348567))

(declare-fun m!348569 () Bool)

(assert (=> b!347649 m!348569))

(declare-fun m!348571 () Bool)

(assert (=> b!347649 m!348571))

(assert (=> b!347649 m!348563))

(declare-fun m!348573 () Bool)

(assert (=> b!347649 m!348573))

(declare-fun m!348575 () Bool)

(assert (=> b!347646 m!348575))

(declare-fun m!348577 () Bool)

(assert (=> b!347655 m!348577))

(declare-fun m!348579 () Bool)

(assert (=> b!347652 m!348579))

(declare-fun m!348581 () Bool)

(assert (=> b!347652 m!348581))

(declare-fun m!348583 () Bool)

(assert (=> b!347653 m!348583))

(declare-fun m!348585 () Bool)

(assert (=> mapNonEmpty!12732 m!348585))

(declare-fun m!348587 () Bool)

(assert (=> b!347656 m!348587))

(check-sat (not b!347655) (not b!347649) tp_is_empty!7515 b_and!14803 (not b!347656) (not start!34786) (not b!347646) (not b!347653) (not b_next!7563) (not b!347652) (not mapNonEmpty!12732) (not b!347647))
(check-sat b_and!14803 (not b_next!7563))
