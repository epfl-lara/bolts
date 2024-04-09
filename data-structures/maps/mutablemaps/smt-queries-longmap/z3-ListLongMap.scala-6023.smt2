; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78052 () Bool)

(assert start!78052)

(declare-fun b_free!16551 () Bool)

(declare-fun b_next!16551 () Bool)

(assert (=> start!78052 (= b_free!16551 (not b_next!16551))))

(declare-fun tp!57924 () Bool)

(declare-fun b_and!27141 () Bool)

(assert (=> start!78052 (= tp!57924 b_and!27141)))

(declare-fun b!910650 () Bool)

(declare-fun e!510665 () Bool)

(declare-fun e!510668 () Bool)

(declare-fun mapRes!30175 () Bool)

(assert (=> b!910650 (= e!510665 (and e!510668 mapRes!30175))))

(declare-fun condMapEmpty!30175 () Bool)

(declare-datatypes ((V!30257 0))(
  ( (V!30258 (val!9535 Int)) )
))
(declare-datatypes ((ValueCell!9003 0))(
  ( (ValueCellFull!9003 (v!12044 V!30257)) (EmptyCell!9003) )
))
(declare-datatypes ((array!53948 0))(
  ( (array!53949 (arr!25926 (Array (_ BitVec 32) ValueCell!9003)) (size!26386 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53948)

(declare-fun mapDefault!30175 () ValueCell!9003)

(assert (=> b!910650 (= condMapEmpty!30175 (= (arr!25926 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9003)) mapDefault!30175)))))

(declare-fun b!910651 () Bool)

(declare-fun res!614583 () Bool)

(declare-fun e!510667 () Bool)

(assert (=> b!910651 (=> (not res!614583) (not e!510667))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53950 0))(
  ( (array!53951 (arr!25927 (Array (_ BitVec 32) (_ BitVec 64))) (size!26387 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53950)

(assert (=> b!910651 (= res!614583 (and (= (size!26386 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26387 _keys!1386) (size!26386 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910652 () Bool)

(assert (=> b!910652 (= e!510667 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30257)

(declare-fun lt!410254 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30257)

(declare-datatypes ((tuple2!12466 0))(
  ( (tuple2!12467 (_1!6243 (_ BitVec 64)) (_2!6243 V!30257)) )
))
(declare-datatypes ((List!18316 0))(
  ( (Nil!18313) (Cons!18312 (h!19458 tuple2!12466) (t!25909 List!18316)) )
))
(declare-datatypes ((ListLongMap!11177 0))(
  ( (ListLongMap!11178 (toList!5604 List!18316)) )
))
(declare-fun contains!4613 (ListLongMap!11177 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2834 (array!53950 array!53948 (_ BitVec 32) (_ BitVec 32) V!30257 V!30257 (_ BitVec 32) Int) ListLongMap!11177)

(assert (=> b!910652 (= lt!410254 (contains!4613 (getCurrentListMap!2834 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun res!614582 () Bool)

(assert (=> start!78052 (=> (not res!614582) (not e!510667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78052 (= res!614582 (validMask!0 mask!1756))))

(assert (=> start!78052 e!510667))

(declare-fun array_inv!20252 (array!53948) Bool)

(assert (=> start!78052 (and (array_inv!20252 _values!1152) e!510665)))

(assert (=> start!78052 tp!57924))

(assert (=> start!78052 true))

(declare-fun tp_is_empty!18969 () Bool)

(assert (=> start!78052 tp_is_empty!18969))

(declare-fun array_inv!20253 (array!53950) Bool)

(assert (=> start!78052 (array_inv!20253 _keys!1386)))

(declare-fun mapIsEmpty!30175 () Bool)

(assert (=> mapIsEmpty!30175 mapRes!30175))

(declare-fun b!910653 () Bool)

(declare-fun e!510664 () Bool)

(assert (=> b!910653 (= e!510664 tp_is_empty!18969)))

(declare-fun mapNonEmpty!30175 () Bool)

(declare-fun tp!57925 () Bool)

(assert (=> mapNonEmpty!30175 (= mapRes!30175 (and tp!57925 e!510664))))

(declare-fun mapKey!30175 () (_ BitVec 32))

(declare-fun mapValue!30175 () ValueCell!9003)

(declare-fun mapRest!30175 () (Array (_ BitVec 32) ValueCell!9003))

(assert (=> mapNonEmpty!30175 (= (arr!25926 _values!1152) (store mapRest!30175 mapKey!30175 mapValue!30175))))

(declare-fun b!910654 () Bool)

(assert (=> b!910654 (= e!510668 tp_is_empty!18969)))

(declare-fun b!910655 () Bool)

(declare-fun res!614581 () Bool)

(assert (=> b!910655 (=> (not res!614581) (not e!510667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53950 (_ BitVec 32)) Bool)

(assert (=> b!910655 (= res!614581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910656 () Bool)

(declare-fun res!614584 () Bool)

(assert (=> b!910656 (=> (not res!614584) (not e!510667))))

(declare-datatypes ((List!18317 0))(
  ( (Nil!18314) (Cons!18313 (h!19459 (_ BitVec 64)) (t!25910 List!18317)) )
))
(declare-fun arrayNoDuplicates!0 (array!53950 (_ BitVec 32) List!18317) Bool)

(assert (=> b!910656 (= res!614584 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18314))))

(assert (= (and start!78052 res!614582) b!910651))

(assert (= (and b!910651 res!614583) b!910655))

(assert (= (and b!910655 res!614581) b!910656))

(assert (= (and b!910656 res!614584) b!910652))

(assert (= (and b!910650 condMapEmpty!30175) mapIsEmpty!30175))

(assert (= (and b!910650 (not condMapEmpty!30175)) mapNonEmpty!30175))

(get-info :version)

(assert (= (and mapNonEmpty!30175 ((_ is ValueCellFull!9003) mapValue!30175)) b!910653))

(assert (= (and b!910650 ((_ is ValueCellFull!9003) mapDefault!30175)) b!910654))

(assert (= start!78052 b!910650))

(declare-fun m!845669 () Bool)

(assert (=> b!910655 m!845669))

(declare-fun m!845671 () Bool)

(assert (=> b!910652 m!845671))

(assert (=> b!910652 m!845671))

(declare-fun m!845673 () Bool)

(assert (=> b!910652 m!845673))

(declare-fun m!845675 () Bool)

(assert (=> start!78052 m!845675))

(declare-fun m!845677 () Bool)

(assert (=> start!78052 m!845677))

(declare-fun m!845679 () Bool)

(assert (=> start!78052 m!845679))

(declare-fun m!845681 () Bool)

(assert (=> b!910656 m!845681))

(declare-fun m!845683 () Bool)

(assert (=> mapNonEmpty!30175 m!845683))

(check-sat tp_is_empty!18969 (not b_next!16551) (not b!910652) (not mapNonEmpty!30175) b_and!27141 (not start!78052) (not b!910656) (not b!910655))
(check-sat b_and!27141 (not b_next!16551))
