; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43258 () Bool)

(assert start!43258)

(declare-fun b_free!12117 () Bool)

(declare-fun b_next!12117 () Bool)

(assert (=> start!43258 (= b_free!12117 (not b_next!12117))))

(declare-fun tp!42621 () Bool)

(declare-fun b_and!20887 () Bool)

(assert (=> start!43258 (= tp!42621 b_and!20887)))

(declare-fun b!479000 () Bool)

(declare-fun e!281787 () Bool)

(declare-fun e!281786 () Bool)

(declare-fun mapRes!22141 () Bool)

(assert (=> b!479000 (= e!281787 (and e!281786 mapRes!22141))))

(declare-fun condMapEmpty!22141 () Bool)

(declare-datatypes ((V!19243 0))(
  ( (V!19244 (val!6862 Int)) )
))
(declare-datatypes ((ValueCell!6453 0))(
  ( (ValueCellFull!6453 (v!9147 V!19243)) (EmptyCell!6453) )
))
(declare-datatypes ((array!30899 0))(
  ( (array!30900 (arr!14853 (Array (_ BitVec 32) ValueCell!6453)) (size!15211 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30899)

(declare-fun mapDefault!22141 () ValueCell!6453)

(assert (=> b!479000 (= condMapEmpty!22141 (= (arr!14853 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6453)) mapDefault!22141)))))

(declare-fun b!479001 () Bool)

(declare-fun res!285804 () Bool)

(declare-fun e!281785 () Bool)

(assert (=> b!479001 (=> (not res!285804) (not e!281785))))

(declare-datatypes ((array!30901 0))(
  ( (array!30902 (arr!14854 (Array (_ BitVec 32) (_ BitVec 64))) (size!15212 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30901)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30901 (_ BitVec 32)) Bool)

(assert (=> b!479001 (= res!285804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479002 () Bool)

(declare-fun e!281788 () Bool)

(declare-fun tp_is_empty!13629 () Bool)

(assert (=> b!479002 (= e!281788 tp_is_empty!13629)))

(declare-fun res!285806 () Bool)

(assert (=> start!43258 (=> (not res!285806) (not e!281785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43258 (= res!285806 (validMask!0 mask!2352))))

(assert (=> start!43258 e!281785))

(assert (=> start!43258 true))

(assert (=> start!43258 tp_is_empty!13629))

(declare-fun array_inv!10704 (array!30899) Bool)

(assert (=> start!43258 (and (array_inv!10704 _values!1516) e!281787)))

(assert (=> start!43258 tp!42621))

(declare-fun array_inv!10705 (array!30901) Bool)

(assert (=> start!43258 (array_inv!10705 _keys!1874)))

(declare-fun mapNonEmpty!22141 () Bool)

(declare-fun tp!42622 () Bool)

(assert (=> mapNonEmpty!22141 (= mapRes!22141 (and tp!42622 e!281788))))

(declare-fun mapValue!22141 () ValueCell!6453)

(declare-fun mapKey!22141 () (_ BitVec 32))

(declare-fun mapRest!22141 () (Array (_ BitVec 32) ValueCell!6453))

(assert (=> mapNonEmpty!22141 (= (arr!14853 _values!1516) (store mapRest!22141 mapKey!22141 mapValue!22141))))

(declare-fun b!479003 () Bool)

(declare-fun res!285805 () Bool)

(assert (=> b!479003 (=> (not res!285805) (not e!281785))))

(declare-datatypes ((List!9115 0))(
  ( (Nil!9112) (Cons!9111 (h!9967 (_ BitVec 64)) (t!15329 List!9115)) )
))
(declare-fun arrayNoDuplicates!0 (array!30901 (_ BitVec 32) List!9115) Bool)

(assert (=> b!479003 (= res!285805 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9112))))

(declare-fun b!479004 () Bool)

(assert (=> b!479004 (= e!281786 tp_is_empty!13629)))

(declare-fun mapIsEmpty!22141 () Bool)

(assert (=> mapIsEmpty!22141 mapRes!22141))

(declare-fun b!479005 () Bool)

(assert (=> b!479005 (= e!281785 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun lt!217790 () Bool)

(declare-fun minValue!1458 () V!19243)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19243)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9004 0))(
  ( (tuple2!9005 (_1!4512 (_ BitVec 64)) (_2!4512 V!19243)) )
))
(declare-datatypes ((List!9116 0))(
  ( (Nil!9113) (Cons!9112 (h!9968 tuple2!9004) (t!15330 List!9116)) )
))
(declare-datatypes ((ListLongMap!7931 0))(
  ( (ListLongMap!7932 (toList!3981 List!9116)) )
))
(declare-fun contains!2588 (ListLongMap!7931 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2273 (array!30901 array!30899 (_ BitVec 32) (_ BitVec 32) V!19243 V!19243 (_ BitVec 32) Int) ListLongMap!7931)

(assert (=> b!479005 (= lt!217790 (contains!2588 (getCurrentListMap!2273 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!479006 () Bool)

(declare-fun res!285807 () Bool)

(assert (=> b!479006 (=> (not res!285807) (not e!281785))))

(assert (=> b!479006 (= res!285807 (and (= (size!15211 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15212 _keys!1874) (size!15211 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(assert (= (and start!43258 res!285806) b!479006))

(assert (= (and b!479006 res!285807) b!479001))

(assert (= (and b!479001 res!285804) b!479003))

(assert (= (and b!479003 res!285805) b!479005))

(assert (= (and b!479000 condMapEmpty!22141) mapIsEmpty!22141))

(assert (= (and b!479000 (not condMapEmpty!22141)) mapNonEmpty!22141))

(get-info :version)

(assert (= (and mapNonEmpty!22141 ((_ is ValueCellFull!6453) mapValue!22141)) b!479002))

(assert (= (and b!479000 ((_ is ValueCellFull!6453) mapDefault!22141)) b!479004))

(assert (= start!43258 b!479000))

(declare-fun m!461039 () Bool)

(assert (=> b!479003 m!461039))

(declare-fun m!461041 () Bool)

(assert (=> b!479001 m!461041))

(declare-fun m!461043 () Bool)

(assert (=> mapNonEmpty!22141 m!461043))

(declare-fun m!461045 () Bool)

(assert (=> b!479005 m!461045))

(assert (=> b!479005 m!461045))

(declare-fun m!461047 () Bool)

(assert (=> b!479005 m!461047))

(declare-fun m!461049 () Bool)

(assert (=> start!43258 m!461049))

(declare-fun m!461051 () Bool)

(assert (=> start!43258 m!461051))

(declare-fun m!461053 () Bool)

(assert (=> start!43258 m!461053))

(check-sat (not b!479003) (not b!479001) (not b_next!12117) (not b!479005) (not start!43258) tp_is_empty!13629 b_and!20887 (not mapNonEmpty!22141))
(check-sat b_and!20887 (not b_next!12117))
