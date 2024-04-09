; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34710 () Bool)

(assert start!34710)

(declare-fun b_free!7509 () Bool)

(declare-fun b_next!7509 () Bool)

(assert (=> start!34710 (= b_free!7509 (not b_next!7509))))

(declare-fun tp!26090 () Bool)

(declare-fun b_and!14747 () Bool)

(assert (=> start!34710 (= tp!26090 b_and!14747)))

(declare-fun b!346611 () Bool)

(declare-fun res!191834 () Bool)

(declare-fun e!212433 () Bool)

(assert (=> b!346611 (=> (not res!191834) (not e!212433))))

(declare-datatypes ((array!18479 0))(
  ( (array!18480 (arr!8747 (Array (_ BitVec 32) (_ BitVec 64))) (size!9099 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18479)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18479 (_ BitVec 32)) Bool)

(assert (=> b!346611 (= res!191834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!346612 () Bool)

(declare-fun res!191830 () Bool)

(assert (=> b!346612 (=> (not res!191830) (not e!212433))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!346612 (= res!191830 (validKeyInArray!0 k0!1348))))

(declare-fun b!346613 () Bool)

(declare-fun res!191837 () Bool)

(assert (=> b!346613 (=> (not res!191837) (not e!212433))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((V!10925 0))(
  ( (V!10926 (val!3775 Int)) )
))
(declare-datatypes ((ValueCell!3387 0))(
  ( (ValueCellFull!3387 (v!5953 V!10925)) (EmptyCell!3387) )
))
(declare-datatypes ((array!18481 0))(
  ( (array!18482 (arr!8748 (Array (_ BitVec 32) ValueCell!3387)) (size!9100 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18481)

(assert (=> b!346613 (= res!191837 (and (= (size!9100 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9099 _keys!1895) (size!9100 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!346614 () Bool)

(declare-fun e!212428 () Bool)

(assert (=> b!346614 (= e!212428 (not true))))

(declare-fun arrayContainsKey!0 (array!18479 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!346614 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!3367 0))(
  ( (MissingZero!3367 (index!15647 (_ BitVec 32))) (Found!3367 (index!15648 (_ BitVec 32))) (Intermediate!3367 (undefined!4179 Bool) (index!15649 (_ BitVec 32)) (x!34528 (_ BitVec 32))) (Undefined!3367) (MissingVacant!3367 (index!15650 (_ BitVec 32))) )
))
(declare-fun lt!163397 () SeekEntryResult!3367)

(declare-datatypes ((Unit!10754 0))(
  ( (Unit!10755) )
))
(declare-fun lt!163398 () Unit!10754)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18479 (_ BitVec 64) (_ BitVec 32)) Unit!10754)

(assert (=> b!346614 (= lt!163398 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!15648 lt!163397)))))

(declare-fun b!346615 () Bool)

(declare-fun e!212431 () Bool)

(declare-fun tp_is_empty!7461 () Bool)

(assert (=> b!346615 (= e!212431 tp_is_empty!7461)))

(declare-fun b!346616 () Bool)

(declare-fun e!212432 () Bool)

(declare-fun mapRes!12648 () Bool)

(assert (=> b!346616 (= e!212432 (and e!212431 mapRes!12648))))

(declare-fun condMapEmpty!12648 () Bool)

(declare-fun mapDefault!12648 () ValueCell!3387)

(assert (=> b!346616 (= condMapEmpty!12648 (= (arr!8748 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3387)) mapDefault!12648)))))

(declare-fun b!346618 () Bool)

(declare-fun e!212429 () Bool)

(assert (=> b!346618 (= e!212429 tp_is_empty!7461)))

(declare-fun b!346619 () Bool)

(declare-fun res!191831 () Bool)

(assert (=> b!346619 (=> (not res!191831) (not e!212433))))

(declare-datatypes ((List!5092 0))(
  ( (Nil!5089) (Cons!5088 (h!5944 (_ BitVec 64)) (t!10228 List!5092)) )
))
(declare-fun arrayNoDuplicates!0 (array!18479 (_ BitVec 32) List!5092) Bool)

(assert (=> b!346619 (= res!191831 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5089))))

(declare-fun b!346620 () Bool)

(declare-fun res!191832 () Bool)

(assert (=> b!346620 (=> (not res!191832) (not e!212433))))

(declare-fun zeroValue!1467 () V!10925)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10925)

(declare-datatypes ((tuple2!5444 0))(
  ( (tuple2!5445 (_1!2732 (_ BitVec 64)) (_2!2732 V!10925)) )
))
(declare-datatypes ((List!5093 0))(
  ( (Nil!5090) (Cons!5089 (h!5945 tuple2!5444) (t!10229 List!5093)) )
))
(declare-datatypes ((ListLongMap!4371 0))(
  ( (ListLongMap!4372 (toList!2201 List!5093)) )
))
(declare-fun contains!2261 (ListLongMap!4371 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1721 (array!18479 array!18481 (_ BitVec 32) (_ BitVec 32) V!10925 V!10925 (_ BitVec 32) Int) ListLongMap!4371)

(assert (=> b!346620 (= res!191832 (not (contains!2261 (getCurrentListMap!1721 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapIsEmpty!12648 () Bool)

(assert (=> mapIsEmpty!12648 mapRes!12648))

(declare-fun b!346617 () Bool)

(assert (=> b!346617 (= e!212433 e!212428)))

(declare-fun res!191836 () Bool)

(assert (=> b!346617 (=> (not res!191836) (not e!212428))))

(get-info :version)

(assert (=> b!346617 (= res!191836 (and ((_ is Found!3367) lt!163397) (= (select (arr!8747 _keys!1895) (index!15648 lt!163397)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18479 (_ BitVec 32)) SeekEntryResult!3367)

(assert (=> b!346617 (= lt!163397 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!191833 () Bool)

(assert (=> start!34710 (=> (not res!191833) (not e!212433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34710 (= res!191833 (validMask!0 mask!2385))))

(assert (=> start!34710 e!212433))

(assert (=> start!34710 true))

(assert (=> start!34710 tp_is_empty!7461))

(assert (=> start!34710 tp!26090))

(declare-fun array_inv!6466 (array!18481) Bool)

(assert (=> start!34710 (and (array_inv!6466 _values!1525) e!212432)))

(declare-fun array_inv!6467 (array!18479) Bool)

(assert (=> start!34710 (array_inv!6467 _keys!1895)))

(declare-fun b!346621 () Bool)

(declare-fun res!191835 () Bool)

(assert (=> b!346621 (=> (not res!191835) (not e!212428))))

(assert (=> b!346621 (= res!191835 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15648 lt!163397)))))

(declare-fun mapNonEmpty!12648 () Bool)

(declare-fun tp!26091 () Bool)

(assert (=> mapNonEmpty!12648 (= mapRes!12648 (and tp!26091 e!212429))))

(declare-fun mapValue!12648 () ValueCell!3387)

(declare-fun mapRest!12648 () (Array (_ BitVec 32) ValueCell!3387))

(declare-fun mapKey!12648 () (_ BitVec 32))

(assert (=> mapNonEmpty!12648 (= (arr!8748 _values!1525) (store mapRest!12648 mapKey!12648 mapValue!12648))))

(assert (= (and start!34710 res!191833) b!346613))

(assert (= (and b!346613 res!191837) b!346611))

(assert (= (and b!346611 res!191834) b!346619))

(assert (= (and b!346619 res!191831) b!346612))

(assert (= (and b!346612 res!191830) b!346620))

(assert (= (and b!346620 res!191832) b!346617))

(assert (= (and b!346617 res!191836) b!346621))

(assert (= (and b!346621 res!191835) b!346614))

(assert (= (and b!346616 condMapEmpty!12648) mapIsEmpty!12648))

(assert (= (and b!346616 (not condMapEmpty!12648)) mapNonEmpty!12648))

(assert (= (and mapNonEmpty!12648 ((_ is ValueCellFull!3387) mapValue!12648)) b!346618))

(assert (= (and b!346616 ((_ is ValueCellFull!3387) mapDefault!12648)) b!346615))

(assert (= start!34710 b!346616))

(declare-fun m!347679 () Bool)

(assert (=> start!34710 m!347679))

(declare-fun m!347681 () Bool)

(assert (=> start!34710 m!347681))

(declare-fun m!347683 () Bool)

(assert (=> start!34710 m!347683))

(declare-fun m!347685 () Bool)

(assert (=> b!346611 m!347685))

(declare-fun m!347687 () Bool)

(assert (=> b!346614 m!347687))

(declare-fun m!347689 () Bool)

(assert (=> b!346614 m!347689))

(declare-fun m!347691 () Bool)

(assert (=> b!346619 m!347691))

(declare-fun m!347693 () Bool)

(assert (=> b!346620 m!347693))

(assert (=> b!346620 m!347693))

(declare-fun m!347695 () Bool)

(assert (=> b!346620 m!347695))

(declare-fun m!347697 () Bool)

(assert (=> b!346617 m!347697))

(declare-fun m!347699 () Bool)

(assert (=> b!346617 m!347699))

(declare-fun m!347701 () Bool)

(assert (=> b!346612 m!347701))

(declare-fun m!347703 () Bool)

(assert (=> mapNonEmpty!12648 m!347703))

(declare-fun m!347705 () Bool)

(assert (=> b!346621 m!347705))

(check-sat tp_is_empty!7461 (not b!346612) (not mapNonEmpty!12648) (not b!346617) (not b_next!7509) (not b!346611) (not b!346614) (not start!34710) (not b!346620) b_and!14747 (not b!346619) (not b!346621))
(check-sat b_and!14747 (not b_next!7509))
