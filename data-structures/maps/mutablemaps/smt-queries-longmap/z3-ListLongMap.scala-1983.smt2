; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34792 () Bool)

(assert start!34792)

(declare-fun b_free!7569 () Bool)

(declare-fun b_next!7569 () Bool)

(assert (=> start!34792 (= b_free!7569 (not b_next!7569))))

(declare-fun tp!26273 () Bool)

(declare-fun b_and!14809 () Bool)

(assert (=> start!34792 (= tp!26273 b_and!14809)))

(declare-fun mapNonEmpty!12741 () Bool)

(declare-fun mapRes!12741 () Bool)

(declare-fun tp!26274 () Bool)

(declare-fun e!213093 () Bool)

(assert (=> mapNonEmpty!12741 (= mapRes!12741 (and tp!26274 e!213093))))

(declare-fun mapKey!12741 () (_ BitVec 32))

(declare-datatypes ((V!11005 0))(
  ( (V!11006 (val!3805 Int)) )
))
(declare-datatypes ((ValueCell!3417 0))(
  ( (ValueCellFull!3417 (v!5984 V!11005)) (EmptyCell!3417) )
))
(declare-fun mapValue!12741 () ValueCell!3417)

(declare-datatypes ((array!18597 0))(
  ( (array!18598 (arr!8805 (Array (_ BitVec 32) ValueCell!3417)) (size!9157 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18597)

(declare-fun mapRest!12741 () (Array (_ BitVec 32) ValueCell!3417))

(assert (=> mapNonEmpty!12741 (= (arr!8805 _values!1525) (store mapRest!12741 mapKey!12741 mapValue!12741))))

(declare-fun b!347745 () Bool)

(declare-fun e!213091 () Bool)

(assert (=> b!347745 (= e!213091 (not true))))

(declare-datatypes ((tuple2!5494 0))(
  ( (tuple2!5495 (_1!2757 (_ BitVec 64)) (_2!2757 V!11005)) )
))
(declare-datatypes ((List!5138 0))(
  ( (Nil!5135) (Cons!5134 (h!5990 tuple2!5494) (t!10276 List!5138)) )
))
(declare-datatypes ((ListLongMap!4421 0))(
  ( (ListLongMap!4422 (toList!2226 List!5138)) )
))
(declare-fun lt!163724 () ListLongMap!4421)

(declare-datatypes ((array!18599 0))(
  ( (array!18600 (arr!8806 (Array (_ BitVec 32) (_ BitVec 64))) (size!9158 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18599)

(declare-datatypes ((SeekEntryResult!3394 0))(
  ( (MissingZero!3394 (index!15755 (_ BitVec 32))) (Found!3394 (index!15756 (_ BitVec 32))) (Intermediate!3394 (undefined!4206 Bool) (index!15757 (_ BitVec 32)) (x!34645 (_ BitVec 32))) (Undefined!3394) (MissingVacant!3394 (index!15758 (_ BitVec 32))) )
))
(declare-fun lt!163723 () SeekEntryResult!3394)

(declare-fun contains!2287 (ListLongMap!4421 (_ BitVec 64)) Bool)

(assert (=> b!347745 (contains!2287 lt!163724 (select (arr!8806 _keys!1895) (index!15756 lt!163723)))))

(declare-datatypes ((Unit!10800 0))(
  ( (Unit!10801) )
))
(declare-fun lt!163725 () Unit!10800)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11005)

(declare-fun zeroValue!1467 () V!11005)

(declare-fun lemmaValidKeyInArrayIsInListMap!172 (array!18599 array!18597 (_ BitVec 32) (_ BitVec 32) V!11005 V!11005 (_ BitVec 32) Int) Unit!10800)

(assert (=> b!347745 (= lt!163725 (lemmaValidKeyInArrayIsInListMap!172 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!15756 lt!163723) defaultEntry!1528))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18599 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347745 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-fun lt!163722 () Unit!10800)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18599 (_ BitVec 64) (_ BitVec 32)) Unit!10800)

(assert (=> b!347745 (= lt!163722 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!15756 lt!163723)))))

(declare-fun b!347747 () Bool)

(declare-fun res!192616 () Bool)

(declare-fun e!213095 () Bool)

(assert (=> b!347747 (=> (not res!192616) (not e!213095))))

(declare-datatypes ((List!5139 0))(
  ( (Nil!5136) (Cons!5135 (h!5991 (_ BitVec 64)) (t!10277 List!5139)) )
))
(declare-fun arrayNoDuplicates!0 (array!18599 (_ BitVec 32) List!5139) Bool)

(assert (=> b!347747 (= res!192616 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5136))))

(declare-fun b!347748 () Bool)

(declare-fun e!213094 () Bool)

(assert (=> b!347748 (= e!213095 e!213094)))

(declare-fun res!192615 () Bool)

(assert (=> b!347748 (=> (not res!192615) (not e!213094))))

(assert (=> b!347748 (= res!192615 (not (contains!2287 lt!163724 k0!1348)))))

(declare-fun getCurrentListMap!1744 (array!18599 array!18597 (_ BitVec 32) (_ BitVec 32) V!11005 V!11005 (_ BitVec 32) Int) ListLongMap!4421)

(assert (=> b!347748 (= lt!163724 (getCurrentListMap!1744 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!347749 () Bool)

(declare-fun res!192617 () Bool)

(assert (=> b!347749 (=> (not res!192617) (not e!213095))))

(assert (=> b!347749 (= res!192617 (and (= (size!9157 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9158 _keys!1895) (size!9157 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!347750 () Bool)

(declare-fun tp_is_empty!7521 () Bool)

(assert (=> b!347750 (= e!213093 tp_is_empty!7521)))

(declare-fun b!347751 () Bool)

(declare-fun res!192614 () Bool)

(assert (=> b!347751 (=> (not res!192614) (not e!213091))))

(assert (=> b!347751 (= res!192614 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15756 lt!163723)))))

(declare-fun b!347752 () Bool)

(declare-fun res!192619 () Bool)

(assert (=> b!347752 (=> (not res!192619) (not e!213095))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18599 (_ BitVec 32)) Bool)

(assert (=> b!347752 (= res!192619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun res!192613 () Bool)

(assert (=> start!34792 (=> (not res!192613) (not e!213095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34792 (= res!192613 (validMask!0 mask!2385))))

(assert (=> start!34792 e!213095))

(assert (=> start!34792 true))

(assert (=> start!34792 tp_is_empty!7521))

(assert (=> start!34792 tp!26273))

(declare-fun e!213090 () Bool)

(declare-fun array_inv!6504 (array!18597) Bool)

(assert (=> start!34792 (and (array_inv!6504 _values!1525) e!213090)))

(declare-fun array_inv!6505 (array!18599) Bool)

(assert (=> start!34792 (array_inv!6505 _keys!1895)))

(declare-fun b!347746 () Bool)

(declare-fun e!213092 () Bool)

(assert (=> b!347746 (= e!213090 (and e!213092 mapRes!12741))))

(declare-fun condMapEmpty!12741 () Bool)

(declare-fun mapDefault!12741 () ValueCell!3417)

(assert (=> b!347746 (= condMapEmpty!12741 (= (arr!8805 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3417)) mapDefault!12741)))))

(declare-fun mapIsEmpty!12741 () Bool)

(assert (=> mapIsEmpty!12741 mapRes!12741))

(declare-fun b!347753 () Bool)

(assert (=> b!347753 (= e!213094 e!213091)))

(declare-fun res!192612 () Bool)

(assert (=> b!347753 (=> (not res!192612) (not e!213091))))

(get-info :version)

(assert (=> b!347753 (= res!192612 (and ((_ is Found!3394) lt!163723) (= (select (arr!8806 _keys!1895) (index!15756 lt!163723)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18599 (_ BitVec 32)) SeekEntryResult!3394)

(assert (=> b!347753 (= lt!163723 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!347754 () Bool)

(declare-fun res!192618 () Bool)

(assert (=> b!347754 (=> (not res!192618) (not e!213095))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347754 (= res!192618 (validKeyInArray!0 k0!1348))))

(declare-fun b!347755 () Bool)

(assert (=> b!347755 (= e!213092 tp_is_empty!7521)))

(assert (= (and start!34792 res!192613) b!347749))

(assert (= (and b!347749 res!192617) b!347752))

(assert (= (and b!347752 res!192619) b!347747))

(assert (= (and b!347747 res!192616) b!347754))

(assert (= (and b!347754 res!192618) b!347748))

(assert (= (and b!347748 res!192615) b!347753))

(assert (= (and b!347753 res!192612) b!347751))

(assert (= (and b!347751 res!192614) b!347745))

(assert (= (and b!347746 condMapEmpty!12741) mapIsEmpty!12741))

(assert (= (and b!347746 (not condMapEmpty!12741)) mapNonEmpty!12741))

(assert (= (and mapNonEmpty!12741 ((_ is ValueCellFull!3417) mapValue!12741)) b!347750))

(assert (= (and b!347746 ((_ is ValueCellFull!3417) mapDefault!12741)) b!347755))

(assert (= start!34792 b!347746))

(declare-fun m!348653 () Bool)

(assert (=> b!347754 m!348653))

(declare-fun m!348655 () Bool)

(assert (=> start!34792 m!348655))

(declare-fun m!348657 () Bool)

(assert (=> start!34792 m!348657))

(declare-fun m!348659 () Bool)

(assert (=> start!34792 m!348659))

(declare-fun m!348661 () Bool)

(assert (=> b!347751 m!348661))

(declare-fun m!348663 () Bool)

(assert (=> b!347745 m!348663))

(declare-fun m!348665 () Bool)

(assert (=> b!347745 m!348665))

(declare-fun m!348667 () Bool)

(assert (=> b!347745 m!348667))

(declare-fun m!348669 () Bool)

(assert (=> b!347745 m!348669))

(assert (=> b!347745 m!348669))

(declare-fun m!348671 () Bool)

(assert (=> b!347745 m!348671))

(assert (=> b!347753 m!348669))

(declare-fun m!348673 () Bool)

(assert (=> b!347753 m!348673))

(declare-fun m!348675 () Bool)

(assert (=> mapNonEmpty!12741 m!348675))

(declare-fun m!348677 () Bool)

(assert (=> b!347748 m!348677))

(declare-fun m!348679 () Bool)

(assert (=> b!347748 m!348679))

(declare-fun m!348681 () Bool)

(assert (=> b!347747 m!348681))

(declare-fun m!348683 () Bool)

(assert (=> b!347752 m!348683))

(check-sat (not b!347748) (not b!347745) (not start!34792) (not b!347752) (not b!347751) (not b_next!7569) tp_is_empty!7521 (not mapNonEmpty!12741) (not b!347747) b_and!14809 (not b!347754) (not b!347753))
(check-sat b_and!14809 (not b_next!7569))
