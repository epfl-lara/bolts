; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34716 () Bool)

(assert start!34716)

(declare-fun b_free!7515 () Bool)

(declare-fun b_next!7515 () Bool)

(assert (=> start!34716 (= b_free!7515 (not b_next!7515))))

(declare-fun tp!26108 () Bool)

(declare-fun b_and!14753 () Bool)

(assert (=> start!34716 (= tp!26108 b_and!14753)))

(declare-fun b!346710 () Bool)

(declare-fun e!212485 () Bool)

(declare-fun e!212484 () Bool)

(assert (=> b!346710 (= e!212485 e!212484)))

(declare-fun res!191909 () Bool)

(assert (=> b!346710 (=> (not res!191909) (not e!212484))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3369 0))(
  ( (MissingZero!3369 (index!15655 (_ BitVec 32))) (Found!3369 (index!15656 (_ BitVec 32))) (Intermediate!3369 (undefined!4181 Bool) (index!15657 (_ BitVec 32)) (x!34538 (_ BitVec 32))) (Undefined!3369) (MissingVacant!3369 (index!15658 (_ BitVec 32))) )
))
(declare-fun lt!163415 () SeekEntryResult!3369)

(declare-datatypes ((array!18491 0))(
  ( (array!18492 (arr!8753 (Array (_ BitVec 32) (_ BitVec 64))) (size!9105 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18491)

(get-info :version)

(assert (=> b!346710 (= res!191909 (and ((_ is Found!3369) lt!163415) (= (select (arr!8753 _keys!1895) (index!15656 lt!163415)) k0!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18491 (_ BitVec 32)) SeekEntryResult!3369)

(assert (=> b!346710 (= lt!163415 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!346711 () Bool)

(declare-fun res!191907 () Bool)

(assert (=> b!346711 (=> (not res!191907) (not e!212485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!346711 (= res!191907 (validKeyInArray!0 k0!1348))))

(declare-fun b!346712 () Bool)

(declare-fun res!191903 () Bool)

(assert (=> b!346712 (=> (not res!191903) (not e!212485))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18491 (_ BitVec 32)) Bool)

(assert (=> b!346712 (= res!191903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!346713 () Bool)

(declare-fun res!191902 () Bool)

(assert (=> b!346713 (=> (not res!191902) (not e!212484))))

(declare-fun arrayContainsKey!0 (array!18491 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!346713 (= res!191902 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15656 lt!163415)))))

(declare-fun b!346714 () Bool)

(declare-fun res!191908 () Bool)

(assert (=> b!346714 (=> (not res!191908) (not e!212485))))

(declare-datatypes ((List!5095 0))(
  ( (Nil!5092) (Cons!5091 (h!5947 (_ BitVec 64)) (t!10231 List!5095)) )
))
(declare-fun arrayNoDuplicates!0 (array!18491 (_ BitVec 32) List!5095) Bool)

(assert (=> b!346714 (= res!191908 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5092))))

(declare-fun b!346715 () Bool)

(declare-fun res!191904 () Bool)

(assert (=> b!346715 (=> (not res!191904) (not e!212485))))

(declare-datatypes ((V!10933 0))(
  ( (V!10934 (val!3778 Int)) )
))
(declare-fun zeroValue!1467 () V!10933)

(declare-datatypes ((ValueCell!3390 0))(
  ( (ValueCellFull!3390 (v!5956 V!10933)) (EmptyCell!3390) )
))
(declare-datatypes ((array!18493 0))(
  ( (array!18494 (arr!8754 (Array (_ BitVec 32) ValueCell!3390)) (size!9106 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18493)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10933)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5448 0))(
  ( (tuple2!5449 (_1!2734 (_ BitVec 64)) (_2!2734 V!10933)) )
))
(declare-datatypes ((List!5096 0))(
  ( (Nil!5093) (Cons!5092 (h!5948 tuple2!5448) (t!10232 List!5096)) )
))
(declare-datatypes ((ListLongMap!4375 0))(
  ( (ListLongMap!4376 (toList!2203 List!5096)) )
))
(declare-fun contains!2263 (ListLongMap!4375 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1723 (array!18491 array!18493 (_ BitVec 32) (_ BitVec 32) V!10933 V!10933 (_ BitVec 32) Int) ListLongMap!4375)

(assert (=> b!346715 (= res!191904 (not (contains!2263 (getCurrentListMap!1723 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapNonEmpty!12657 () Bool)

(declare-fun mapRes!12657 () Bool)

(declare-fun tp!26109 () Bool)

(declare-fun e!212486 () Bool)

(assert (=> mapNonEmpty!12657 (= mapRes!12657 (and tp!26109 e!212486))))

(declare-fun mapRest!12657 () (Array (_ BitVec 32) ValueCell!3390))

(declare-fun mapValue!12657 () ValueCell!3390)

(declare-fun mapKey!12657 () (_ BitVec 32))

(assert (=> mapNonEmpty!12657 (= (arr!8754 _values!1525) (store mapRest!12657 mapKey!12657 mapValue!12657))))

(declare-fun b!346716 () Bool)

(declare-fun res!191906 () Bool)

(assert (=> b!346716 (=> (not res!191906) (not e!212485))))

(assert (=> b!346716 (= res!191906 (and (= (size!9106 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9105 _keys!1895) (size!9106 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!346717 () Bool)

(assert (=> b!346717 (= e!212484 (not true))))

(assert (=> b!346717 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10758 0))(
  ( (Unit!10759) )
))
(declare-fun lt!163416 () Unit!10758)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18491 (_ BitVec 64) (_ BitVec 32)) Unit!10758)

(assert (=> b!346717 (= lt!163416 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!15656 lt!163415)))))

(declare-fun b!346718 () Bool)

(declare-fun tp_is_empty!7467 () Bool)

(assert (=> b!346718 (= e!212486 tp_is_empty!7467)))

(declare-fun b!346719 () Bool)

(declare-fun e!212487 () Bool)

(declare-fun e!212482 () Bool)

(assert (=> b!346719 (= e!212487 (and e!212482 mapRes!12657))))

(declare-fun condMapEmpty!12657 () Bool)

(declare-fun mapDefault!12657 () ValueCell!3390)

(assert (=> b!346719 (= condMapEmpty!12657 (= (arr!8754 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3390)) mapDefault!12657)))))

(declare-fun b!346720 () Bool)

(assert (=> b!346720 (= e!212482 tp_is_empty!7467)))

(declare-fun mapIsEmpty!12657 () Bool)

(assert (=> mapIsEmpty!12657 mapRes!12657))

(declare-fun res!191905 () Bool)

(assert (=> start!34716 (=> (not res!191905) (not e!212485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34716 (= res!191905 (validMask!0 mask!2385))))

(assert (=> start!34716 e!212485))

(assert (=> start!34716 true))

(assert (=> start!34716 tp_is_empty!7467))

(assert (=> start!34716 tp!26108))

(declare-fun array_inv!6468 (array!18493) Bool)

(assert (=> start!34716 (and (array_inv!6468 _values!1525) e!212487)))

(declare-fun array_inv!6469 (array!18491) Bool)

(assert (=> start!34716 (array_inv!6469 _keys!1895)))

(assert (= (and start!34716 res!191905) b!346716))

(assert (= (and b!346716 res!191906) b!346712))

(assert (= (and b!346712 res!191903) b!346714))

(assert (= (and b!346714 res!191908) b!346711))

(assert (= (and b!346711 res!191907) b!346715))

(assert (= (and b!346715 res!191904) b!346710))

(assert (= (and b!346710 res!191909) b!346713))

(assert (= (and b!346713 res!191902) b!346717))

(assert (= (and b!346719 condMapEmpty!12657) mapIsEmpty!12657))

(assert (= (and b!346719 (not condMapEmpty!12657)) mapNonEmpty!12657))

(assert (= (and mapNonEmpty!12657 ((_ is ValueCellFull!3390) mapValue!12657)) b!346718))

(assert (= (and b!346719 ((_ is ValueCellFull!3390) mapDefault!12657)) b!346720))

(assert (= start!34716 b!346719))

(declare-fun m!347763 () Bool)

(assert (=> b!346711 m!347763))

(declare-fun m!347765 () Bool)

(assert (=> start!34716 m!347765))

(declare-fun m!347767 () Bool)

(assert (=> start!34716 m!347767))

(declare-fun m!347769 () Bool)

(assert (=> start!34716 m!347769))

(declare-fun m!347771 () Bool)

(assert (=> b!346712 m!347771))

(declare-fun m!347773 () Bool)

(assert (=> b!346714 m!347773))

(declare-fun m!347775 () Bool)

(assert (=> b!346713 m!347775))

(declare-fun m!347777 () Bool)

(assert (=> mapNonEmpty!12657 m!347777))

(declare-fun m!347779 () Bool)

(assert (=> b!346710 m!347779))

(declare-fun m!347781 () Bool)

(assert (=> b!346710 m!347781))

(declare-fun m!347783 () Bool)

(assert (=> b!346715 m!347783))

(assert (=> b!346715 m!347783))

(declare-fun m!347785 () Bool)

(assert (=> b!346715 m!347785))

(declare-fun m!347787 () Bool)

(assert (=> b!346717 m!347787))

(declare-fun m!347789 () Bool)

(assert (=> b!346717 m!347789))

(check-sat (not b!346712) (not b!346710) (not b!346715) (not mapNonEmpty!12657) (not b!346714) b_and!14753 tp_is_empty!7467 (not b!346717) (not b_next!7515) (not start!34716) (not b!346711) (not b!346713))
(check-sat b_and!14753 (not b_next!7515))
